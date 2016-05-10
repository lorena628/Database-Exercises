USE codeup_test_db;
TRUNCATE albums;
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 48.1, 'Pop, Rock ,R&B'),
        ('AC/DC', 'Back In Black', 1980, 50, 'Hard Rock'),
        ('Pink Floyd', 'The Dark Side of the Moon', 1973, 45, 'Progressive Rock'),
        ('Whitney Houston', 'The Bodyguard', 1992, 44, 'R&B,Soul,Pop'),
        ('Meat Loaf','Bat Out of Hell', 1977, 43, 'Hard Rock'),
        ('Eagles', 'Their Greatest Hits(1971-1975)', 1976, 42, 'Soft Rock'),
        ('Bee Gees', 'Saturday Night Fever', 1977, 40, 'Disco'),
        ('Fleetwood Mac', 'Rumours', 1977, 40, 'Soft Rock'),
        ('Shania Twain', 'Come on Over', 1997, 39, 'Country, Pop'),
        ('Led Zepplin', 'Led Zepplin IV', 1971, 37, 'Hard Rock');

SELECT * FROM albums;