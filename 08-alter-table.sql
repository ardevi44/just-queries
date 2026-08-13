ALTER TABLE
  employers
ALTER COLUMN
  is_hiring
SET
  DEFAULT FALSE;

-- This way we alter columns
ALTER TABLE
  conversations
ALTER COLUMN
  date_sent
SET
  DEFAULT CURRENT_TIMESTAMP;

-- CHANGE A COLUMN DATA TYPE in postgresql
ALTER TABLE
  employers
ALTER COLUMN
  yearly_revenue
SET
  DATA TYPE FLOAT;

ALTER TABLE
  users
ALTER COLUMN
  full_name
SET
  DATA TYPE VARCHAR(300);