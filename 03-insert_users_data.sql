DESCRIBE users;

/*
 Remember use "" doubles for identifiers in postgresql
 and '' single for string data
 */
INSERT INTO
  users (yearly_salary, full_name, current_status)
VALUES
  (19000, 'Max Schwarz', 'self-employed');

INSERT INTO
  users (yearly_salary, full_name, current_status)
VALUES
  (0, 'Fabricio Guerra', 'unemployed'),
  (25000, 'Marisol Gonzalez', 'self-employed'),
  (35000, 'rdevi44', 'employed');