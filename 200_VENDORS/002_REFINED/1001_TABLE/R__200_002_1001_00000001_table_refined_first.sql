USE DATABASE {{ env }}_VENDORS;
USE SCHEMA REFINED;
CREATE TABLE IF NOT EXISTS {{ env }}_refined_first
(
   FULL_NAME VARCHAR,PHONE VARCHAR
);
