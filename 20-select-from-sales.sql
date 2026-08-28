SELECT
  date_created,
  customer_name,
  product_name,
  volume
FROM
  sales;

SELECT
  *
FROM
  sales;

SELECT
  *
FROM
  sales
WHERE
  date_fulfilled IS NULL;

SELECT
  customer_name,
  product_name,
  volume,
  is_recurring AS "recurring",
  is_disputed AS "disputed"
FROM
  sales
WHERE
  is_recurring IS FALSE
  AND is_disputed IS FALSE;

SELECT
  customer_name,
  product_name,
  volume,
  date_fulfilled - date_created AS "Days by difference",
  date_created,
  date_fulfilled
FROM
  sales
WHERE
  date_fulfilled - date_created <= 5;

UPDATE
  sales
SET
  date_fulfilled = '2026-08-16',
  date_created = '2022-04-10'
WHERE
  (date_fulfilled - date_created) = -1589;

SELECT
  *
FROM
  sales
ORDER BY
  volume DESC
LIMIT
  10;

-- another variation
SELECT
  *
FROM
  sales -- 1. The table where the data comes from
WHERE
  is_disputed IS FALSE -- 2. The clause we need to check
ORDER BY
  volume DESC -- 3. The order we need
LIMIT
  -- 4. And finally the limit
  10 OFFSET 3;

SELECT
  DISTINCT customer_name
FROM
  sales
ORDER BY
  customer_name ASC;