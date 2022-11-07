USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT 'Pink Floyd Albums' AS 'query one';
SELECT album_name FROM albums WHERE artist_name = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released.
SELECT 'Sgt. Pepper Release Year' AS 'query two';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# Which albums were released in the 1990s.
SELECT 'Albums Released in the 1990s' AS 'query three';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# Which albums had less than 20 million certified sales.
SELECT 'Albums with less than 20 million certified sales' AS 'query four';
SELECT * FROM albums WHERE sales < 20;

# All albums with a genre of "Rock".
SELECT 'Albums with a genre of Rock' AS 'query five';
SELECT * FROM albums WHERE genre = 'Rock';
