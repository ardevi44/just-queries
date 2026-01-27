SELECT
  *
FROM
  sales;

SELECT
  customer_name,
  product_name,
  volume,
  date_created
FROM
  sales;

SELECT
  *
FROM
  sales
WHERE
  volume >= 1000;

-- SELECT *
-- FROM sales
-- WHERE is_recurring = 0;
-- The same but using different operator
SELECT
  *
FROM
  sales
WHERE
  is_recurring IS TRUE;

SELECT
  customer_name AS "Customer",
  product_name AS "Product",
  volume AS "Sale volume",
  is_disputed AS "Disputed"
FROM
  sales
WHERE
  (is_disputed IS TRUE)
  AND (volume >= 5000);

-- SELECT *
-- FROM sales
-- WHERE date_created > '2021-11-01'
--   AND date_created < '2022-05-01';
-- Another way of doing this
SELECT
  *
FROM
  sales
WHERE
  date_created BETWEEN '2021-11-01'
  AND '2022-05-01';

USE sales_example;

-- Filtering text values
SELECT
  customer_name
FROM
  sales
WHERE
  customer_name <> "Max Schwarz";

-- Working with dates and date differences
UPDATE
  sales
SET
  date_created = '2022-04-10',
  date_fulfilled = '2022-04-26'
WHERE
  id = 3;

SELECT
  id,
  date_fulfilled,
  date_created,
  (date_fulfilled - date_created) AS "diff"
FROM
  sales
WHERE
  (date_fulfilled - date_created) <= 5;

-- Order By ...
SELECT
  *
FROM
  sales
ORDER BY
  volume DESC
LIMIT
  10;

-- SELECT * FROM sales
-- ORDER BY volume
-- LIMIT 10;
-- SELECT * FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC
-- LIMIT 3;
SELECT
  *
FROM
  sales
ORDER BY
  volume DESC
LIMIT
  5 OFFSET 3;

USE sales_example;

-- Select DISTINCT
SELECT
  DISTINCT customer_name
FROM
  sales
ORDER BY
  customer_name;

-- Creating a View ...
CREATE VIEW base_result AS
SELECT
  *
FROM
  sales
WHERE
  volume > 1000;

-- Create a subquery from a view
SELECT
  customer_name,
  product_name
FROM
  base_result;

-- You can see the Views in the server with this command 
-- SHOW FULL TABLES
-- WHERE Table_type = 'VIEW';