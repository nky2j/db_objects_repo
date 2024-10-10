USE DATABASE  {{ env }}_VENDORS;
USE SCHEMA  RAW;
CREATE OR REPLACE VIEW {{ env }}_VENDORS_raw_firstview AS SELECT * FROM {{ env }}_VENDORS_raw_first;
