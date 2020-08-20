INSERT INTO users (id, name, email, password)
VALUES(1, 'Gerald', 'aa@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (id, name, email, password)
VALUES(2, 'Jacob', 'bb@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (id, name, email, password)
VALUES(3, 'Timothy', 'ss@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (id, name, email, password)
VALUES(4, 'Sarah', 'dd@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (id, name, email, password)
VALUES(5, 'Geoff', 'ee@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
----------------------------------------------------------------------------------
INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active, owner_id)
VALUES('mr', 'description', 'https//images.com', 'https//images.com', 80, 20, 66, 68, 'Canada', 'Sunrise', 'Vancouver', 'BC', '123456', true, 2);

INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active, owner_id)
VALUES('mrs', 'description', 'https//images.com', 'https//images.com', 100, 16, 12, 23, 'Canada', 'Okotoks', 'Vancouver', 'BC', '2345', true, 1);

INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active, owner_id)
VALUES('mr', 'description', 'https//images.com', 'https//images.com', 59, 12, 66, 70, 'Canada', 'Manor', 'Toronto', 'ON', '123456', true, 3);

INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active, owner_id)
VALUES('miss', 'description', 'https//images.com', 'https//images.com', 180, 120, 166, 268, 'Canada', 'Cort', 'Edmonton', 'AB', '6789', true, 4);
---------------------------------------------------------------------------------
INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES(1, '2020-02-05', '2020-02-08', 2, 1);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES(2, '2020-04-03', '2020-05-08', 1, 3);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES(3, '2020-02-05', '2020-02-08', 2, 1);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES(4, '2020-12-15', '2020-12-30', 4, 4);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES(5, '2018-03-05', '2018-03-08', 3, 2);
----------------------------------------------------------------------------------

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES(1, 1, 1, 2, 3, 'messages');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES(2, 1, 4, 3, 2, 'messages');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES(3, 5, 2, 1, 3, 'messages');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES(4, 1, 3, 2, 1, 'messages');
