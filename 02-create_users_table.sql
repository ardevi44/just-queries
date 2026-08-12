-- This is how we create an enum field in postgresql
CREATE TYPE employment_status AS ENUM ('employed', 'self-employed', 'unemployed');

-- and then we create the table
CREATE TABLE users (
  full_name VARCHAR (200),
  yearly_salary INT,
  current_status employment_status
);

-- We can check the table created like this in PSQL
SELECT
  column_name,
  data_type,
  is_nullable,
  column_default
FROM
  information_schema.columns
WHERE
  table_schema = 'public'
  AND table_name = 'users'
ORDER BY
  ordinal_position;

SELECT
  constraint_name,
  constraint_type
FROM
  information_schema.table_constraints
WHERE
  table_schema = 'public'
  AND table_name = 'users';

-- The syntax in mysql is very simple
CREATE TABLE users (
  full_name VARCHAR(200),
  yearly_salary INT,
  current_status ENUM('employed', 'self-employed', 'unemployed')
);