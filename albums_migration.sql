USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
   user_id INT NOT NULL AUTO_INCREMENT,
   artist VARCHAR(50) DEFAULT 'NONE',
   name VARCHAR(100) NOT NULL,
   release_date INT,
   sales DOUBLE,
   genre VARCHAR(100) NOT NULL,
   PRIMARY KEY (user_id)
);
