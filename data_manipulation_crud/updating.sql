UPDATE sales
SET product_name = "A Truck",
  volume = volume * 1000
WHERE id = 13;

SELECT *
FROM sales
WHERE id = 13;