USE DATABASE {{ env }}_PEOPLESOFT;
USE SCHEMA  REFINED;
CREATE TABLE IF NOT EXISTS {{ env }}_PEOPLESOFT_refined_second
(
   FULL_NAME VARCHAR,PHONE VARCHAR
);
