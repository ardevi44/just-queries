-- This is a view it's stored in memory and you can make queries from it
CREATE VIEW base_result AS
SELECT
  *
FROM
  sales
WHERE
  volume > 1000;

SELECT
  customer_name,
  volume
FROM
  base_result;

DROP VIEW base_result;