DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_user_id INT REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  cost_per_night INT NOT NULL DEFAULT 0,
  number_of_parking_spaces INT NOT NULL DEFAULT 0,
  number_of_bathrooms INT NOT NULL DEFAULT 0,
  number_of_bedrooms INT NOT NULL DEFAULT 0,
  thumbnail_url VARCHAR(255) NOT NULL,
  cover_url VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  province VARCHAR(225) NOT NULL,
  city VARCHAR(225) NOT NULL,
  street VARCHAR(225) NOT NULL,
  postal_code VARCHAR(225) NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  guest_user_id INT REFERENCES users(id) ON DELETE CASCADE,
  property_id INT REFERENCES properties(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY,
  message TEXT,
  rating SMALLINT NOT NULL DEFAULT 0,
  guest_user_id INT REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INT REFERENCES reservations(id) ON DELETE CASCADE,
  property_id INT REFERENCES properties(id) ON DELETE CASCADE
);