CREATE DATABASE relations;

USE relations;

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) NOT NULL,
  address_id INT NOT NULL
);

CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(50) NOT NULL,
  city_id INT NOT NULL
);

CREATE TABLE cities (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(300) NOT NULL
);

-- Inserting DATA
INSERT INTO
  cities (name)
VALUES
  ('Berlin'),
  ('New York'),
  ('London');

INSERT INTO
  addresses (street, house_number, city_id)
VALUES
  ('Teststreet', '8A', 3),
  ('Some street', '10', 1),
  ('Teststreet', '1', 3),
  ('My street', '101', 2);

INSERT INTO
  users (first_name, last_name, email, address_id)
VALUES
  ('Max', 'Schwarz', 'max@test.com', 2),
  ('Manuel', 'Lorenz', 'manu@test.com', 4),
  ('Julie', 'Barnes', 'julie@barnes.com', 3);

-- INNER JOIN ...
SELECT
  CONCAT(u.first_name, " ", u.last_name) AS "User full name",
  u.email,
  c.name AS "City Name",
  a.house_number,
  a.street AS "Street Number"
FROM
  users AS u
  INNER JOIN addresses AS a ON u.address_id = a.id
  INNER JOIN cities AS c ON a.city_id = c.id
WHERE
  c.id = 1
  OR c.id = 2
ORDER BY
  u.id DESC;

-- Testing the left JOIN showing all addresses that don't have a user associated yet
SELECT
  *
FROM
  addresses AS a
  LEFT JOIN users AS u ON u.address_id = a.id
WHERE
  u.id IS NULL;

-- Select every address you have
-- That has a user associated via user id
-- Or show me all the addresses that has a user associated
-- The addresses that doesn't have one just put null in the rest of the columns of users
-- Inserting more data in relations
INSERT INTO
  cities (name)
VALUES
  ('Munich'),
  ('Rome'),
  ('Tokyo'),
  ('Washington, D.C.');

INSERT INTO
  addresses (street, house_number, city_id)
VALUES
  ('Beerstreet', '91', 4),
  ('Beerstreet', '12', 4),
  ('Pizzastreet', '1', 5),
  ('Burgerstreet', '9', 2),
  ('Anotherstreet', '12', 1),
  ('Smallstreet', '11', 3);

INSERT INTO
  users (first_name, last_name, email, address_id)
VALUES
  ('Marina', 'Marks', 'marina@test.com', 2),
  ('Hans', 'Mayer', 'hansm@test.com', 5),
  ('Maria', 'Marionatti', 'maria@test.com', 7),
  ('Michael', 'Smith', 'michael@test.com', 8);

-- INNER VS LEFT JOIN
USE relations;

SELECT
  c.name AS city_name,
  u.first_name,
  u.last_name
FROM
  cities AS c
  LEFT JOIN addresses AS a ON c.id = a.city_id
  LEFT JOIN users AS u ON u.address_id = a.id;

-- Not used very often but maybe needed in some cases
SELECT
  *
FROM
  users
  CROSS JOIN addresses;