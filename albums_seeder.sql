USE codeup_test_db;
# add a TRUNCATE query to delete all records from the table before inserting.
TRUNCATE albums;

INSERT INTO albums (artist_name, album_name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 50.2, 'Pop'),
       ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 41.2, 'soft rock'),
       ('Eagles', 'Hotel California', 1976, 31.8, 'Soft rock'),
       ('AC/DC', 'Back in Black', 1980, 30.1, 'Hard rock'),
       ('Led Zepplin', 'Led Zepplin IV', 1971, 30.4, 'Hard rock'),
       ('Shania Twain', 'Come On Over', 1997, 30.4, 'Country');
