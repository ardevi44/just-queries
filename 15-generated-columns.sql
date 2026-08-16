ALTER TABLE
  users
ADD
  COLUMN f_name VARCHAR(200) NOT NULL,
ADD
  COLUMN l_name VARCHAR(200) NOT NULL;

ALTER TABLE
  users DROP COLUMN full_name;

-- You can generate the value of a field from other columns
ALTER TABLE
  users
ADD
  COLUMN full_name VARCHAR(400) GENERATED ALWAYS AS (f_name || ' ' || l_name) STORED;

INSERT INTO
  users (f_name, l_name)
VALUES
  ('ardevi44', 'develop');