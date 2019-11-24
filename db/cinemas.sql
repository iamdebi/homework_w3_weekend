DROP TABLE IF EXISTS screenings;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS films;

CREATE TABLE customers(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  funds DECIMAL(4,2)
);

CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  price DECIMAL(4,2)
);

CREATE TABLE tickets(
  id SERIAL PRIMARY KEY,
  cust_id INT REFERENCES customers(id) ON DELETE CASCADE,
  film_id INT REFERENCES films(id) ON DELETE CASCADE
)

CREATE TABLE screening(
  id SERIAL PRIMARY KEY,
  show_time VARCHAR, --TIME HH:MM:SS
  availibility INT,
  ticket_id INT REFERENCES tickets(id) ON DELETE CASCADE,
  film_id INT REFERENCES tickets(film_id) ON DELETE CASCADE,
  cust_id INT REFERENCES tickets(cust_id) ON DELETE CASCADE
);
