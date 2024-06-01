DROP DATABASE IF EXISTS clnstyles;

CREATE DATABASE clnstyles;

\c clnstyles;

CREATE TABLE
    category (
        id serial primary key,
        service text not null,
        description text not null
    );

CREATE TABLE
    kids_styles (
        id serial primary key,
        price int,
        name text not null,
        description text not null,
        image_url text,
        duration text
    );

CREATE TABLE
    natural_styles (
        id serial primary key,
        price int,
        name text not null,
        description text not null,
        image_url text,
        duration text
    );

CREATE TABLE
    extensions_styles (
        id serial primary key,
        price int,
        name text not null,
        description text not null,
        image_url text,
        duration text
    );