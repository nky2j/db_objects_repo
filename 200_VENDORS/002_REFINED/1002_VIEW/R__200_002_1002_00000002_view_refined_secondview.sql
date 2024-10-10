USE DATABASE {{ env }}_VENDORS;
USE SCHEMA  REFINED;
CREATE OR REPLACE VIEW {{ env }}_VENDORS_refined_secondview AS SELECT * FROM {{ env }}_VENDORS_refined_second;
