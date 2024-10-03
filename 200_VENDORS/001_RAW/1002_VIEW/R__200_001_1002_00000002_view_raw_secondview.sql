USE DATABASE {{ env }}_VENDORS;
USE SCHEMA  RAW;
CREATE OR REPLACE VIEW {{ env }}_raw_secondview AS SELECT * FROM {{ env }}_raw_second;
