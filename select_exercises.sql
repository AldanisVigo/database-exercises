-- Create a new file called select_exercises.sql.

-- Remember to USE the codeup_test_db.
USE codeup_test_db;

-- In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:

-- The name of all albums by Pink Floyd.
SELECT name AS 'All Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Year Sgt. Pepper''s Lonely Hearts Club Band Was Released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre AS 'Genre For Nirvana''s Nevermind' FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT name 'Albums Released in The 1990s' FROM albums  WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT name AS 'Albums With Less Than 20M Certified Sales' FROM albums WHERE sales < 20.0;

-- All the albums with a genre of "Rock". 
SELECT name AS 'Rock Albums' FROM albums WHERE genre = 'Rock';

-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- Because we are checking for equality, if we wanted to see all the records with "rock" we would use LIKE and wildcards LIKE "%Rock%"

-- As always, commit your changes after each step and push them out to GitHub