USE DATABASE {{ env }}_VENDORS;
CREATE SCHEMA IF NOT EXISTS  RAW;
CREATE OR REPLACE TABLE raw_first
(
   FIRST_NAME VARCHAR,LAST_NAME VARCHAR, PHONE VARCHAR
);