CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'emoji@123'

CREATE DATABASE SCOPED CREDENTIAL shankarcreds
    WITH
        IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE bronze_source
    WITH
    (
        LOCATION = 'abfss://bronze@storage999.dfs.core.windows.net/Raw/',
        CREDENTIAL = shankarcreds
    )
    
---- While creating external datasource in dedicated SQL pool, it only accepts the abffs path. 

CREATE EXTERNAL FILE FORMAT parquet_format
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)