-- POLYBASE: A data virtualization and loading technology that allows us to query external data directly using T-sql.
-- LOAD huge datasets into dedicated SQL pools via COPY INTO or CREATE TABLE AS SELECT (CTAS)

-- Polybase uses parallel data transfer, splits data into chunks and loads in parallel across synapses distributions.

-- DROP TABLE copy_into_table
CREATE TABLE copy_into_table
(
    Dealer_ID VARCHAR(4000),
    Model_ID VARCHAR(4000),
    Branch_ID VARCHAR(4000),
    Date_ID VARCHAR(4000),
    Units_Sold BIGINT,
    Revenue BIGINT
)

-- Note: if we do not use bigint here query might run into an error as we are using parquet format.

WITH
(
    DISTRIBUTION = ROUND_ROBIN
)
COPY INTO copy_into_table
(
     Dealer_ID 1,
    Model_ID 2,
    Branch_ID 3,
    Date_ID 4,
    Units_Sold 5,
    Revenue 6
)
FROM 'https://storage999.dfs.core.windows.net/bronze/Raw/new_folder/'
WITH(
    FILE_TYPE = 'PARQUET',
    CREDENTIAL = (IDENTITY = 'Managed Identity')

)


-- With the above query we have now copied the table into dedicated SQL pool tables. 
-- Means the table is in SQL pool, copied from the datalake or storage containers.

SELECT*FROM copy_into_table