USE DATABASE {{ env }}_VENDORS;
USE SCHEMA  RAW;
CREATE VIEW IF NOT EXISTS raw_firstview AS SELECT * FROM raw_first;
