USE DATABASE {{ env }}_VENDORS;
USE SCHEMA RAW;
/*
ALTER TABLE  raw_second ADD COLUMN PHONE VARCHAR;
*/
CREATE TABLE IF NOT EXISTS raw_second
(
   FIRST_NAME VARCHAR,LAST_NAME VARCHAR, PHONE VARCHAR
);
