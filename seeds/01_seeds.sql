INSERT INTO users (name, email, password)
VALUES ('Harry', 'boywholived@hotwarts.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Barry', 'barry@nowhere.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Larry', 'cucumber@kitchentop.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, cost_per_night, number_of_parking_spaces, number_of_bathrooms, number_of_bedrooms, thumbnail_url, cover_url, country, province, city, street, postal_code, active)
VALUES (1, 'Speed lamp', 'desc', 93061, 6, 4, 8, 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 'Canada', 'Quebec', 'Sotboske', '536 Namsub Highway', 28142, true),
(1, 'Blank corner', 'desc', 85234, 6, 6, 7, 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 'Canada', 'Alberta', 'Bohbatev', '651 Nami Road', 83680, true),
(2, 'Habit mix', 'desc', 46058, 0, 5, 6, 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 'Canada', 'Genwezuj', 'Genwezuj', '1650 Hejto Center', 44583, true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 1, 1),
('2019-01-04', '2019-02-01', 1, 2),
('2021-10-01', '2021-10-14', 3, 3);

INSERT INTO property_reviews (message, rating, guest_id, reservation_id, property_id)
VALUES ('messages', 3, 3, 1, 2),
('messages', 4, 2, 2, 2),
('messages', 4, 3, 3, 1);