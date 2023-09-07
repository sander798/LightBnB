DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_user_id INT REFERENCES users(id),
  title VARCHAR(255),
  description TEXT,
  cost_per_night INT,
  number_of_parking_spaces INT,
  number_of_bathrooms INT,
  number_of_bedrooms INT,
  thumbnail_url VARCHAR(255),
  cover_url VARCHAR(255),
  country VARCHAR(255),
  province VARCHAR(225),
  city VARCHAR(225),
  street VARCHAR(225),
  postal_code VARCHAR(225),
  active BOOLEAN
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  guest_user_id INT REFERENCES users(id),
  property_id INT REFERENCES properties(id)
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY,
  message TEXT,
  rating SMALLINT,
  guest_user_id INT REFERENCES users(id),
  reservation_id INT REFERENCES reservations(id),
  property_id INT REFERENCES properties(id)
);