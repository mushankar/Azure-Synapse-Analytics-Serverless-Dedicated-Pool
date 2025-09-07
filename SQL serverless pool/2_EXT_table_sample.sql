---------------------
--CREATE EXT TABLE
---------------------

CREATE EXTERNAL TABLE revenue_ext_table
(
    Dealer_ID VARCHAR(4000),
    Model_ID VARCHAR(4000),
    Branch_ID VARCHAR(4000),
    Date_ID VARCHAR(4000),
    Units_Sold VARCHAR(4000),
    Revenue VARCHAR(4000)
)
WITH
(
    LOCATION = 'Revenue',
    DATA_SOURCE = bronze_source,
    FILE_FORMAT = csv_format
)

-- Here csv_format is created from openrowset script. Please refer to documentation to create different file formats to infer in scripts.
-- The table is null because it is empty, see CETAS query to understand the flow or how to create an external table within blob container.
SELECT * FROM revenue_ext_table
