USE relations;

DESCRIBE users;

-- This is for view a complete description of the created table, be careful with SHOW before
-- create
SHOW CREATE TABLE users;

-- Here we are altering the table's constraints
ALTER TABLE
  users
ADD
  CONSTRAINT fk_users_addresses FOREIGN KEY (address_id) REFERENCES addresses(id) ON DELETE CASCADE;

ALTER TABLE
  addresses
ADD
  CONSTRAINT fk_addresses_cities FOREIGN KEY (city_id) REFERENCES cities(id) ON DELETE CASCADE;

-- And here is how to drop them
ALTER TABLE
  addresses DROP FOREIGN KEY fk_addresses_cities;

ALTER TABLE
  users DROP FOREIGN KEY fk_users_addresses;

-- And don't forget to remove the indexes too 
SHOW INDEX
FROM
  addresses;

ALTER TABLE
  addresses DROP INDEX fk_addresses_cities;

ALTER TABLE
  users DROP INDEX fk_users_addresses;