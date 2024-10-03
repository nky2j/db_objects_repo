USE DATABASE {{ env }}_VENDORS;
USE SCHEMA  REFINED;
CREATE OR REPLACE VIEW {{ env }}_refined_secondview AS SELECT * FROM {{ env }}_refined_second;
