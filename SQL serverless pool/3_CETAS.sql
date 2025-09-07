-- CETAS -> Create External Table AS


CREATE EXTERNAL TABLE revenue_cetas
WITH
(
    LOCATION = 'new_folder',
    DATA_SOURCE = bronze_source,
    FILE_FORMAT = parquet_format
) 
AS 
SELECT * FROM
    OPENROWSET(
        BULK 'Revenue',
        DATA_SOURCE = 'bronze_source',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [Revenue_data]

-- Conclusion: Here the data is read from Openrowset function and is converted to external table. This external table is stored where? 
-- External table is now saved under the 'new_folder', we did not create this table manually, it was created from the code.

SELECT*FROM revenue_cetas