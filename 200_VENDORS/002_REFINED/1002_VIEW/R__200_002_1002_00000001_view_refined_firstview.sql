USE DATABASE {{ env }}_VENDORS;
USE SCHEMA REFINED;
CREATE OR REPLACE VIEW {{ env }}_refined_firstview AS  SELECT * FROM {{ env }}_refined_first;
