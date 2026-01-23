-- A way of making the check constraint in the creating table process
-- CREATE TABLE users (
--   full_name varchar(300) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0),
--   CHECK (yearly_salary < max_salary)
-- );
USE talently;

DESCRIBE users;

SELECT *
FROM users;

UPDATE users
SET yearly_salary = NULL
WHERE full_name = "Fabricio Guerra";

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);

-- Here the previous check is violated
-- INSERT INTO users (full_name, yearly_salary, current_status)
-- VALUES ("Some User", -1000, "unemployed");
-- # Importing the posh-git module to see the git changes an messages via PowerShell
-- Import-Module posh-git
-- # Go to the sql_queries folder
-- function GoToSQLWorkSpace {
--   Set-Location -Path "C:\Users\arbey\sql_queries";
--   code .;
-- }
-- Set-Alias -Name GoToQueriesOpenCode -Value GoToSQLWorkSpace