USE DATABASE {{ env }}_VENDORS;
USE SCHEMA REFINED;
CREATE OR REPLACE VIEW {{ env }}_VENDORS_refined_firstview AS  SELECT * FROM {{ env }}_VENDORS_refined_first;
