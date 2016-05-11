DROP DATABASE IF EXISTS books_exchange_db;

CREATE DATABASE books_exchange_db;

USE books_exchange_db;

CREATE TABLE books (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author VARCHAR(200),
    title VARCHAR(120),
    genre VARCHAR(40),
    published_year DATE,
    rating INT(1),
    owner INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE friends (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    owner VARCHAR (50),
    username VARCHAR (50),
    password VARCHAR (50),
    PRIMARY KEY (id)
);






use books_exchange_db;

INSERT INTO friends(name,username, password)
VALUES
    ('Micah', 'micah', 'password'),
    ('James','james', 'password123'),
    ('Luis', 'luis', 'changename')


INSERT INTO books (author, title, genre, published_year,rating, owner)
VALUES
    ('Chuck Phalniuk', 'Fight Club', 'Twisted', 2006, 4, 1),
    ('Lep Tolstoy', 'War And Peace', 'Fiction', 1869, 5, 2),
    ('George Lackoff', 'Metaphors We Live by', 'Education', 1990, 5, 3);





















