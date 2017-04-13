-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
	SELECT id FROM artists WHERE name='Queen';
	SELECT id, artist_id, title FROM albums WHERE artist_id=51;



-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

	SELECT * FROM media_types;
	SELECT composer, name FROM tracks WHERE media_type_id=3;


-- 3) Find the least expensive track that has the genre "Electronica/Dance".

	SELECT id FROM genres WHERE name='Electronica/Dance';  
	SELECT name, composer, genre_id, unit_price FROM tracks WHERE genre_id=15 ORDER BY unit_price ASC LIMIT 1;



-- 4) Find the all the artists whose names start with A.
	SELECT name, id FROM artists WHERE name LIKE 'A%';


-- 5) Find all the tracks that belong to playlist 1.

	There is no instance called playlist inside tracks.
