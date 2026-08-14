ALTER TABLE
  users
ADD
  CHECK (yearly_salary > 0);

/*If some of the rows is actually violating this rule the query is gonna get an error,
 because of it*/
-- This is a query to show the constraints and their names
SELECT
  constraint_name,
  check_clause
FROM
  information_schema.check_constraints;

-- And this is a way to drop the constraints
ALTER TABLE
  users DROP CONSTRAINT users_yearly_salary_check;