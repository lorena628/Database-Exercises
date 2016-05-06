USE codeup_test_db;

SELECT name AS 'All albums in database'
FROM albums;

SELECT name AS 'albums released before 1980'
FROM albums
WHERE release_date <= 1980;

SELECT name AS 'all albums by michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';


