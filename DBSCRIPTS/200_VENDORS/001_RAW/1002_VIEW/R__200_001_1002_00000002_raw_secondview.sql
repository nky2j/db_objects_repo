USE DATABASE  {{ env }}_VENDORS;
USE SCHEMA RAW;
CREATE OR REPLACE VIEW {{ env }}_VENDORS_raw_secondview AS SELECT * FROM {{ env }}_VENDORS_raw_second;
