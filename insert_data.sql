DESCRIBE employers;

INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Learning Inc',
    'Educationstreet 12, London',
    0.87,
    TRUE
  ),
  (
    'Big Oil Inc',
    'Slipperystreet 110, Houston',
    112.55,
    false
  ),
  (
    'Hipster Food',
    'Avocadostreet 5, Berlin',
    6.12,
    TRUE
  );

SELECT *
FROM conversations;

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES (
    "Max Schwarz",
    'Learning Inc',
    'Hi, I like Learning!',
    '2021-10-15 16:32:10'
  );

INSERT INTO users (
    first_name,
    last_name,
    yearly_salary,
    current_status
  )
VALUES ("Max", "Schwarz", 19000, 'self-employed');