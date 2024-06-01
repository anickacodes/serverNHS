
DROP DATABASE IF EXISTS clnstyles;
CREATE DATABASE clnstyles;

\c clnstyles;


CREATE TABLE category (
    id serial primary key,
    service text not null,
    description text not null
); 

-- CREATE TABLE styles (
--     id serial primary key,
--     name text not null, 
--     price int,
--     description text not null,
--     image_url text,
--     duration time 
-- );


