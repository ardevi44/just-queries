ALTER TABLE
  users
ADD
  CHECK (yearly_salary > 0);

SELECT
  *
FROM
  users;

UPDATE
  users
SET
  yearly_salary = 10000
WHERE
  full_name = 'Fabricio Guerra';

INSERT INTO
  users (full_name, yearly_salary, current_status)
VALUES
  ('Irvinn Everardo', 9000, 'employed');

SELECT
  constraint_name,
  check_clause
FROM
  information_schema.check_constraints;

ALTER TABLE
  users DROP CONSTRAINT users_yearly_salary_check;