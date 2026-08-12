-- This is the way to see the tables available in postgresql
SELECT
  table_name
FROM
  information_schema.tables
WHERE
  table_schema = 'public'
ORDER BY
  table_name;

-- The way to show them in MySQL
SHOW TABLES;