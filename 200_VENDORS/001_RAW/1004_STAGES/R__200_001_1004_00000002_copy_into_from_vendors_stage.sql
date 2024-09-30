USE DATABASE  VENDORS;
USE SCHEMA RAW;
COPY INTO raw_first FROM @vendors_stage FILES = ('VENDOR_RAW.csv');
COPY INTO raw_second FROM @vendors_stage FILES = ('VENDOR_RAW2.csv');