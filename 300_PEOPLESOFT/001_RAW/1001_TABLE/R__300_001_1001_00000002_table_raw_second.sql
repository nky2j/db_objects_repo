USE DATABASE {{ env }}_PEOPLESOFT;
USE SCHEMA RAW;
--CREATE OR REPLACE DATABASE {{ env }}_VENDORS;
---CREATE OR REPLACE SCHEMA RAW;
CREATE TABLE IF NOT EXISTS {{ env }}_PEOPLESOFT_raw_second
(
   FIRST_NAME VARCHAR,LAST_NAME VARCHAR, PHONE VARCHAR
);