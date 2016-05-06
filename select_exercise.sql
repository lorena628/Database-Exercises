USE codeup_test_db;
-- SELECT * FROM albums;
-- SELECT "Hello";

SELECT name AS "albums by pink floyd" 
FROM albums
WHERE artist = "Pink Floyd";

SELECT release_date AS "year album was released by Michael Jackson"
FROM albums
WHERE name = "Thriller";

SELECT genre AS "Genre of Back in Black"
FROM albums
WHERE name = "Back in black";

SELECT name AS "released in 1990 or after"
FROM albums
WHERE release_date >= 1990 ;

SELECT name AS "less than 20 million sales"
FROM albums
WHERE sales <= 20;

SELECT name AS "all rock genres"
FROM albums
WHERE genre = "rock";