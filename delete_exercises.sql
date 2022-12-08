-- Create a file called delete_exercises.sql.
USE codeup_test_db;

-- Write SELECT statements for:

-- Albums released after 1991
SELECT name AS 'Albums After 1991' FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT name AS '' FROM albums WHERE genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT name AS 'Albums by Whitney Houston' FROM albums WHERE artist = 'Whitney Houston';

-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist = 'Whitney Houston';
-- Use the MySQL command line client to make sure your records really were removed. 
-- CHECKED and items were removed