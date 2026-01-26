CREATE DATABASE online_shop;

USE online_shop;

CREATE TABLE products (
  name VARCHAR(200),
  price NUMERIC(10, 2),
  description TEXT,
  amount_in_stock SMALLINT,
  image_path VARCHAR(500)
);

INSERT INTO products (
    price,
    name,
    description,
    amount_in_stock,
    image_path
  )
VALUES (
    12.99,
    "Just a Book",
    "This is a book and this text could be way longer!",
    39,
    "uploads/images/products/a-book.jpg"
  );

SELECT *
FROM products;

-- Adding constraints
-- modifying columns, not necessary DROP columns
ALTER TABLE products
MODIFY COLUMN name VARCHAR(200) NOT NULL,
  -- Not null
MODIFY COLUMN price NUMERIC(10, 2) NOT NULL CHECK (price > 0),
  -- Validating a positive price
MODIFY COLUMN description TEXT NOT NULL,
  -- Just setting Not null
MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock >= 0);

ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT FIRST;

SELECT *
FROM products;