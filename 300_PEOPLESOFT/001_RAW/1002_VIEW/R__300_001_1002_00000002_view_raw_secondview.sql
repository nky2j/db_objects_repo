USE DATABASE {{ env }}_PEOPLESOFT;
USE SCHEMA  RAW;
CREATE OR REPLACE VIEW {{ env }}_PEOPLESOFT_raw_secondview AS SELECT * FROM {{ env }}_PEOPLESOFT_raw_second;
