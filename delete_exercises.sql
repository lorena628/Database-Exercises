USE codeup_test_db;

SELECT '' AS "Table before deletes";

SELECT * FROM albums;

SELECT name AS 'albums released after 1991'
FROM albums
WHERE release_date >= 1991;

SELECT name AS "albums that are disco genre"
FROM albums
WHERE genre = "Disco";

SELECT name AS "albums by Whitney Houston" 
FROM albums
WHERE artist = "Whitney Houston";



-- --Now to delete :( ------
SELECT '' AS "Table after deletes :(";
DELETE FROM albums WHERE id = 4;
DELETE FROM albums WHERE id = 9;
DELETE FROM albums WHERE id = 7;

-- this will show the resulting table after deletes
SELECT * FROM albums;