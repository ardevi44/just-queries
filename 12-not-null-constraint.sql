ALTER TABLE
  users
ALTER COLUMN
  full_name
SET
  NOT NULL,
ALTER COLUMN
  current_status
SET
  NOT NULL;

-- MySQL Syntax instead of ALTER COLUMN
-- MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
-- MODIFY COLUMN current_status VARCHAR(300) NOT NULL;