DROP DATABASE IF EXISTS clnstyles;

CREATE DATABASE clnstyles;

\c clnstyles;

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
