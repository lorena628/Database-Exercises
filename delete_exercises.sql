USE codeup_test_db;
-- SELECT "HELLO";
SELECT name AS 'albums released after 1991'
FROM albums
WHERE release_date >= 1991;

SELECT name AS "albums that are disco genre"
FROM albums
WHERE genre = "Disco";

SELECT name AS "albums by Whitney Houston" 
FROM albums
WHERE artist = "Whitney Houston";