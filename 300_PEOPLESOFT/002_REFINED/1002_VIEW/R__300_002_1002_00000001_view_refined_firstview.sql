USE DATABASE {{ env }}_PEOPLESOFT;
USE SCHEMA  REFINED;
CREATE OR REPLACE VIEW {{ env }}_PEOPLESOFT_refined_firstview AS  SELECT * FROM {{ env }}_PEOPLESOFT_refined_first;
