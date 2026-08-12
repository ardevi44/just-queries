CREATE TABLE employers (
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  -- yearly_revenue FLOAT(5,2), This could be rounded because of float
  -- NUMERIC exact value
  yearly_revenue NUMERIC(5, 2),
  is_hiring BOOLEAN
);