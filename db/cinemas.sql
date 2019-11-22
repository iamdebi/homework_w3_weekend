DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS films;

CREATE TABLE customers(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  funds INT
);

CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  price INT,
);

CREATE TABLE tickets(
  id SERIAL PRIMARY KEY,
  cust_id INT REFERENCES customers(id),
  film_id INT REFERENCES films(id),
);
