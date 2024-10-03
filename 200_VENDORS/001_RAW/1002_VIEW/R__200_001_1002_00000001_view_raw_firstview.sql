USE DATABASE {{ env }}_VENDORS;
USE SCHEMA  RAW;
CREATE OR REPLACE VIEW {{ env }}_raw_firstview AS SELECT * FROM {{ env }}_raw_first;
