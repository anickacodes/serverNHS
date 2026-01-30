DROP DATABASE IF EXISTS clnstylez;

CREATE DATABASE clnstylez;

\c clnstylez;

CREATE TABLE category (
    id serial PRIMARY KEY,
    service text NOT NULL,
    description text NOT NULL
);

CREATE TABLE styles (
    id serial PRIMARY KEY,
    price int,
    name text NOT NULL,
    description text NOT NULL,
    image_url text,
    duration text,
    category_id int REFERENCES category(id)
);

create table clients (
    id serial primary key,
    name text not null,
    address varchar(150),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    date_of_birth DATE,
    preferred_contact_method TEXT,
    notes TEXT,
    style_id INT REFERENCES styles(id)
);

-- CREATE TABLE bookings (
--     id SERIAL PRIMARY KEY,
--     client_id INT REFERENCES clients(id),
--     style_id INT REFERENCES styles(id),
--     booking_date DATE NOT NULL,
--     appointment_time TIME NOT NULL,
--     status TEXT NOT NULL DEFAULT 'pending',
--     notes TEXT
-- );