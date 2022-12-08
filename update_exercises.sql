-- Create a file called update_exercises.sql.
USE codeup_test_db;

-- After each SELECT add an UPDATE statement to:

-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.

-- Write SELECT statements to output each of the following with a caption:

-- All albums in your table.
SELECT name AS 'All Albums' FROM albums;

UPDATE albums SET sales = sales * 10;

SELECT name AS 'Album', sales AS 'Sales' FROM albums;

-- All albums released before 1980
SELECT name, artist AS 'Albums Before 1980' FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT name, artist AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';


