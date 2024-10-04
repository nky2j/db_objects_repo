USE DATABASE {{ env }}_PEOPLESOFT;
USE SCHEMA  REFINED;

CREATE OR REPLACE procedure {{ env }}_PEOPLESOFT_RAW_TO_REFINED_INGESTION()
RETURNS VARCHAR
LANGUAGE PYTHON
RUNTIME_VERSION = '3.11'
PACKAGES = ('requests==2.31.0', 'snowflake-snowpark-python')
HANDLER = 'main'
EXECUTE AS CALLER
AS
$$
import snowflake.snowpark.functions as F
from snowflake.snowpark.session import Session

def main(session: Session) -> str:
    # Define the tables
    raw_first_table = session.table("{{ env }}_PEOPLESOFT.RAW.{{ env }}_PEOPLESOFT_RAW_FIRST")
    raw_second_table = session.table("{{ env }}_PEOPLESOFT.RAW.{{ env }}_PEOPLESOFT_RAW_SECOND")
    

    # Union both tables
    unioned_data = raw_first_table.select(F.concat(F.col("FIRST_NAME"), F.lit(" "), F.col("LAST_NAME")).alias("FULL_NAME"), "PHONE") \
                                  .unionAll(
                                      raw_second_table.select(F.concat(F.col("FIRST_NAME"), F.lit(" "), F.col("LAST_NAME")).alias("FULL_NAME"), "PHONE")
                                  )

    ##Split the data based on the condition (more than 2 '9's in the phone number)
    refined_first_insert = unioned_data.filter(F.length(F.regexp_replace(F.col("PHONE"), "[^9]", "")) <= 2)
    refined_second_insert = unioned_data.filter(F.length(F.regexp_replace(F.col("PHONE"), "[^9]", "")) > 2)
    

    ##Insert into REFINED schema tables
    refined_first_insert.write.save_as_table("{{ env }}_PEOPLESOFT.REFINED.{{ env }}_PEOPLESOFT_REFINED_FIRST", mode="append")
    refined_second_insert.write.save_as_table("{{ env }}_PEOPLESOFT.REFINED.{{ env }}_PEOPLESOFT_REFINED_SECOND", mode="append")

    return "Data inserted successfully into REFINED tables."
$$;
