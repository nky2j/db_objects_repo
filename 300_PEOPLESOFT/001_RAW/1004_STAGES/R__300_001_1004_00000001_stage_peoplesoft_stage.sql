USE DATABASE {{ env }}_PEOPLESOFT;
USE SCHEMA RAW;
--CREATE OR REPLACE STAGE {{ env }}_PEOPLESOFT_STAGE FILE_FORMAT = {{ env }}_PEOPLESOFT_FILE_FORMAT;
ALTER STAGE {{ env }}_PEOPLESOFT_STAGE SET DIRECTORY = (ENABLE = TRUE);
--COPY INTO {{ env }}_PEOPLESOFT_RAW_FIRST FROM @{{ env }}_PEOPLESOFT_STAGE FILES = ('PEOPLESOFT_RAW.csv');
--COPY INTO {{ env }}_PEOPLESOFT_RAW_SECOND FROM @{{ env }}_PEOPLESOFT_STAGE FILES = ('PEOPLESOFT_RAW2.csv');