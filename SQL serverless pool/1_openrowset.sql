-------------
--create master key
-------------

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'emoji@123'

-- create credential

CREATE DATABASE SCOPED CREDENTIAL shankarcreds
WITH
    IDENTITY = 'Managed Identity'

---- create external data source

/* https://storage999.blob.core.windows.net/bronze/Raw/ (https location)
  replace blob with dfs so the link can be read.
  
  or create a linked service from manage -> Linked services to azure data lake gen2 storage. Select storage name and select system assigned managed identity from authentication.
  now we can access the stoage from
  */
---
CREATE EXTERNAL DATA SOURCE bronze_source
    WITH
    (
        LOCATION = 'https://storage999.dfs.core.windows.net/bronze/Raw',
            CREDENTIAL = shankarcreds
    
    )


---------------------
--CREATE EXT FILE FORMAT
---------------------

CREATE EXTERNAL FILE FORMAT csv_format
WITH
(
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS(
            FIELD_TERMINATOR = ''
    )
)

---------------------
--CREATE PARQUET FILE FORMAT
---------------------
CREATE EXTERNAL FILE FORMAT parquet_format
WITH
(
    FORMAT_TYPE = PARQUET,
     DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-- Go to external file format documentation and under syntax or data_compression select Parquet to see the options. 
/* we have chosen the snappycodec option from the given options in the syntax. [ , DATA_COMPRESSION = {
        'org.apache.hadoop.io.compress.SnappyCodec'
      | 'org.apache.hadoop.io.compress.GzipCodec' }
    ]
*/

---------------------
--OPENROWSET FUNCTION
---------------------

SELECT * FROM
    OPENROWSET(
        BULK 'Revenue',
        DATA_SOURCE = 'bronze_source',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [Revenue_data]





