USE DATABASE {{ env }}_VENDORS;
USE SCHEMA RAW;
--CREATE OR REPLACE DATABASE {{ env }}_VENDORS;
--CREATE OR REPLACE SCHEMA RAW;
CREATE TABLE IF NOT EXISTS {{ env }}_VENDORS_RAW_FIRST
(
   FIRST_NAME VARCHAR,LAST_NAME VARCHAR, PHONE VARCHAR
);