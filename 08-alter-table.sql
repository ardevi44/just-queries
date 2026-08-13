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