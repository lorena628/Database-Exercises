USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(60),
    name VARCHAR(100) NOT NULL,
    release_date YEAR(4),
    sales DECIMAL(10, 2),
    genre VARCHAR(50),
    PRIMARY KEY(id),
    UNIQUE(artist, name)

);