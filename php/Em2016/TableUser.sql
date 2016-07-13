SET @db = 'em2016';
SET @inserfile = 'C:/Users/mstorost/Desktop/Em2016/EmKader2016.csv';

USE @db;
DROP TABLE IF EXISTS 'user';
CREATE TABLE IF NOT EXISTS 'user'(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	salt VARCHAR(10) NOT NULL UNIQUE,
	hash VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(50) NOT NULL UNIQUE,
	active BOOLEAN,
	deleted BOOLEAN,
	created DateTime
);

-- LOAD DATA INFILE 'C:/Users/mstorost/Desktop/Em2016/EmKader2016.csv' 
LOAD DATA INFILE @insertfile
INTO TABLE 'user' FIELDS TERMINATED BY ';' IGNORE 1 LINES 
(username, password, salt, hash, email, active, deleted, created )
SET Geburtsdatum = STR_TO_DATE(@var1,"%d.%m.%Y")

