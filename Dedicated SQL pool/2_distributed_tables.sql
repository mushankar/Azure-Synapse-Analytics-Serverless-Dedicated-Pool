-- Round Robin Table
CREATE TABLE round_table
(
    id INT,
    name VARCHAR(100),
    salary INT
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN
)

INSERT INTO round_table
VALUES
(1, 'shankar',10)

SELECT * FROM round_table

--------------
--Replicate Table
--------------

CREATE SCHEMA gold;

CREATE TABLE gold.product(
    key_prod INT,
    prod_id INT,
    prod_name VARCHAR(4000)
)

WITH
(
    DISTRIBUTION = REPLICATE
)

--------------
--Hash Table
--------------
CREATE TABLE gold.facttable
(
    key_prod INT,
    revenue INT,
    cost INT
)
WITH
(
    DISTRIBUTION = HASH (key_prod)
)
