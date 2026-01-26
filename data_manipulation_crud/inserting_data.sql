INSERT INTO sales (
    date_fulfilled,
    customer_name,
    product_name,
    volume,
    is_recurring,
    is_disputed
  )
VALUES (
    NULL,
    "Max Schwarz",
    "A book",
    12.990,
    TRUE,
    FALSE
  ),
  (
    NULL,
    "Learning Inc",
    "Course Bundle",
    4889.62,
    FALSE,
    FALSE
  ),
  (
    "2022-04-10",
    "Big Oil Inc",
    "Trucks",
    400000.0,
    FALSE,
    TRUE
  );

INSERT INTO sales (
    date_created,
    date_fulfilled,
    customer_name,
    product_name,
    volume
  )
VALUES (
    "2021-12-09",
    "2021-12-17",
    "Company Z",
    "A tuck",
    109.0
  );

SELECT *
FROM sales;