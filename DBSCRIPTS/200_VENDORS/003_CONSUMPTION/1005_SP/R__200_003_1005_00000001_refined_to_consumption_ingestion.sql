USE DATABASE {{ env }}_VENDORS;
USE SCHEMA CONSUMPTION;

CREATE PROCEDURE IF NOT EXISTS {{ env }}_REFINED_TO_CONSUMPTION_INGESTION()
RETURNS VARCHAR
LANGUAGE PYTHON
RUNTIME_VERSION = '3.11'
PACKAGES = ('requests==2.31.0', 'snowflake-snowpark-python')
HANDLER = 'main'
EXECUTE AS CALLER
AS
$$
import snowflake.snowpark as snowpark
from snowflake.snowpark.types import StringType, StructType, StructField
from snowflake.snowpark.functions import col, call_udf
import requests
import pandas as pd

def main(session: snowpark.Session):
  return 'yes';
$$;
