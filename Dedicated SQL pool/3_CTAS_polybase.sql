CREATE EXTERNAL TABLE parquet_table
(
    ealer_ID VARCHAR(4000),
    Model_ID VARCHAR(4000),
    Branch_ID VARCHAR(4000),
    Date_ID VARCHAR(4000),
    Units_Sold BIGINT,
    Revenue BIGINT
)
WITH
(
    LOCATION = '/new_folder',
    DATA_SOURCE = bronze_source,
    FILE_FORMAT = parquet_format
)

-- While creating external datasource in dedicated SQL pool, it only accepts the abffs path. 

-------------------
--CTAS (Polybase)
-------------------

CREATE TABLE poly_table
WITH(
    DISTRIBUTION = ROUND_ROBIN
)
AS 
SELECT*FROM parquet_table

SELECT*FROM poly_table