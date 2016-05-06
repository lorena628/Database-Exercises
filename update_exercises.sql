USE codeup_test_db;

SELECT name AS 'All albums in database'
FROM albums;

SELECT name AS 'albums released before 1980'
FROM albums
WHERE release_date <= 1980;

SELECT name AS 'all albums by michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';




-- changes to be updated----------------------------------



-- -- SELECT sales AS "All albums 10 times more popular"
UPDATE albums
SET sales = sales *10
WHERE sales;
SELECT sales AS '10 times more popular' 
FROM albums 
WHERE sales;

-- -- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = release_date -50
WHERE release_date;
SELECT release_date AS 'all release date subtracted by 50' 
FROM albums 
WHERE release_date <=1980 ; 

-- --Change "Michael Jackson" to "Peter Jackson"
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist AS 'Michael Jackson\'s name to be changed to Peter Jackson'
FROM albums;

