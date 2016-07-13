DROP DATABASE IF EXISTS em2016;
CREATE DATABASE em2016 CHARACTER SET utf8 COLLATE utf8_general_ci;

USE em2016;
DROP TABLE IF EXISTS Kader;
CREATE TABLE IF NOT EXISTS Kader(
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nummer INT NOT NULL,
	Vorname VARCHAR(50) NOT NULL,
	Nachname VARCHAR(50) NOT NULL,
	Geburtsdatum DATE NOT NULL,
	Position VARCHAR(50) NOT NULL,
	Heimatverein VARCHAR(50)
);

--CHARACTER SET utf8 COLLATE utf8_general_ci;

use em2016;
LOAD DATA INFILE 'C:/Users/user/Desktop/Em2016/EmKader2016.csv' 
INTO TABLE kader FIELDS TERMINATED BY ';' IGNORE 1 LINES 
(Nummer, Vorname, Nachname, @var1, Position,Heimatverein )
SET Geburtsdatum = STR_TO_DATE(@var1,"%d.%m.%Y")

