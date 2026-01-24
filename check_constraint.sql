-- A way of making the check constraint in the creating table process
-- CREATE TABLE users (
--   full_name varchar(300) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0),
--   CHECK (yearly_salary < max_salary)
-- );
UPDATE users
SET yearly_salary = NULL
WHERE full_name = "Fabricio Guerra";

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);

-- Here the previous check is violated
-- INSERT INTO users (full_name, yearly_salary, current_status)
-- VALUES ("Some User", -1000, "unemployed");
-- Here we can do this using ALTER TABLE statement
-- But we can also do
-- a DROP TABLE
-- and then Recreate it but not recommended with tables that have data already