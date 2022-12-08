-- Create a new file named albums_seeder.sql.

-- At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
USE codeup_test_db;

-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, 
-- use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.

-- First write your queries as separate INSERT statements for each record and test. You should see no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.

INSERT INTO albums(artist,name,release_date,sales,genre) VALUES
('Michael Jackson','Thriller',1982,50.2,'Pop, post-disco, funk, rock'),
('AC/DC','Back in Black',1980,30.1,'Hard Rock'),
('Whiteney Houston','Their Bodyguard',1992,28.7,'R&B, soul, pop, soundtrack'),
('Pink Floyd','The Dark Side of The Moon',1973,24.8,'Progressive rock'),
('Eagles','Their Greatest Hits 1971-1975',1976,41.2,'Country rock, soft rock, folk rock'),
('Eagles','Hotel California',1976,31.8,'Soft rock'),
('Shania Twain','Come on Over',1997,30.4,'Country, pop'),
('Fleetwood Mac','Rumours',1977,29.3,'Soft rock'),
('Bee Gees','Saturday Night Fever',1977,22.1,'Disco'),
('Led Zeppelin','Led Zeppelin IV',1971,30.4,'Hard rock, heavy metal, folk rock'),
('Michael Jackson','Bad',1987,21.1,'Pop, rhythm and blues, funk and rock'),
('Meat Loaf','Bat Out of Hell',1977,22.0,'Hard rock, glam rock, progressive rock'),
('Alanis Morissette','Jagged Little Pill',1995,25.4,'Alternative rock'),
('Various artists','Dancing Dirty',1987,24.1,'Pop, rock, R&B'),
('Celine Dion','Falling into You',1996,21.1,'Pop, soft rock'),
('Adele','21',2011,27.1,'Pop, soul'),
('The Beattles','1',2000,23.2,'Rock'),
('Metallica','Metallica',1991,22.7,'Heavy Metal'),
('Celine Dion','Let''s Talk About Love',1997,19.5,'Pop, soft rock'),
('Bob Marley & The Wailers','Legend: The Best of Bob Marley & The Wailers',1984,22.9,'Reggae'),
('Guns N'' Roses','Appetite for Destruction',1987,22.8,'Hard rock'),
('Bruce Springsteen','Born in the U.S.A.',1984,22.0,'Heartland rock'),
('ABBA','Gold: Greatest Hits',1992,21.6,'Pop, disco'),
('Dire Straits','Brothers in Arms',1895,21.1,'Roots rock, blues rock, soft rock'),
('Santana','Supernatural',1999,20.8,'Latin rock'),
('Madonna','The Immaculate Collection',1990,19.8,'Pop, dance'),
('Pink Floyd','The Wall',1979,18.9,'Progressive rock'),
('The Beatles','Sgt. Pepper''s Lonely Hearts Club Band',1967,18.3,'Rock'),
('Michael Jackson','Dangerous',1991,17.0,'New jack swing, R&B and pop'),
('The Beatles','Abbey Road',1969,16.9,'Rock')

-- source select_exercises.sql;
-- source update_exercises.sql;