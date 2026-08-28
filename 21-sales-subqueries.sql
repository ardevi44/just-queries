-- This over here is a subquery, it won't be stored in memory
SELECT
  customer_name,
  product_name
FROM
  (
    SELECT
      *
    FROM
      sales
    WHERE
      volume > 1000
  ) AS base_result;