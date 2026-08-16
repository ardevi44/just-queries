DROP TABLE users,
employers,
conversations;

CREATE TYPE employment_status AS ENUM(
  'self-employed',
  'employed',
  'unemployed'
);

CREATE TABLE users (
  -- The line bellow is for Postgresql with Integers
  -- Don't have to specify the UNIQUE constraint because is part of the PRIMARY key
  id SERIAL PRIMARY KEY,
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  current_status employment_status
);

CREATE TABLE employers (
  id SERIAL PRIMARY KEY,
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  -- yearly_revenue FLOAT(5,2), This could be rounded because of float
  -- NUMERIC exact value
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  id SERIAL PRIMARY KEY,
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL
);