DROP TABLE IF EXISTS formInput;
CREATE TABLE mask(	
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	deleted BIT,
	active BIT
)
CREATE TABLE formInput (
	id INT NOT NULL AUTO_INCREMENT,
	position INT NOT NULL,
	cssid VARCHAR(10) UNIQUE,
	class VARCHAR(50) NULL,
	inputtype VARCHAR(50) NULL,
	value VARCHAR(50) NULL,
	parentId INT NOT NULL,
	label VARCHAR(50) NULL,
	labelFor VARCHAR(50) NULL,
  disabled BIT,
  active BIT,
  deleted BIT,
	PRIMARY KEY (id)
);

DELETE FROM formInput;

INSERT INTO `em2016`.`forminput` (`id`, `cssid`, `class`, `inputtype`, `value`, `label`, `labelFor`, `disabled`, `active`, `deleted`) 
VALUES (
NULL, 'id0', 'container', 'div', NULL, NULL, NULL, b'0', b'1', b'0');

INSERT INTO `em2016`.`forminput` (`id`, `position`, `cssid`, `class`, `inputtype`, `value`, `parentId`,`label`, `labelFor`, `disabled`, `active`, `deleted`) 
VALUES (
NULL, 1, 'id1', 'btn btn-info', 'button', 'testbutton', 'This is the label', '0', 'id1', b'0', b'1', b'0');

INSERT INTO `em2016`.`forminput` (`id`, `position`,`cssid`, `class`, `inputtype`, `value`, `parentId`, `label`, `labelFor`, `disabled`, `active`, `deleted`) 
VALUES (
NULL, 2,'id2', 'btn btn-success', 'button', 'button2', 'This is label2', '0', 'id2', b'0', b'1', b'0');

INSERT INTO formInput (cssid, class, inputtype, label, labelFor, disabled, value) 
VALUES 
('usr','form-control','text','Name:','usr',0, null),
('pwd','form-control','password','Password:','pwd',0, null),
('rememberme','checkbox','checkbox','remember password','pwd',0, null);

UPDATE formInput SET labelFor = NULL where id = 5;

SELECT * FROM formInput

DELETE FROM formInput;

DROP TABLE formInput;

---------------------------------------------------------------------------------------------------

CREATE TABLE form(
	id int IDENTITY NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
);

---------------------------------------------------------------------------------------------------

CREATE TABLE tablename(
	id int IDENTITY NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
);

---------------------------------------------------------------------------------------------------

CREATE TABLE tablefield(
	id int IDENTITY NOT NULL PRIMARY KEY,
	FK_tablenameId INT NOT NULL,
	name VARCHAR(50) NOT NULL,
);

---------------------------------------------------------------------------------------------------

CREATE TABLE tableFormMapping(
	id INT IDENTITY NOT NULL PRIMARY KEY,
	FK_tablenameId INT NOT NULL,
	FK_tablefieldId INT NOT NULL,
	FK_formInputId INT NOT NULL 
);

---------------------------------------------------------------------------------------------------

CREATE TABLE keywordList(
	id INT IDENTITY NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	isActive BIT,
	isDeleted BIT,
);

INSERT INTO keywordList(name, isActive, isDeleted) 
VALUES
('car',1,0),
('department',1,0);

---------------------------------------------------------------------------------------------------

CREATE TABLE keywordListValue(
	id INT IDENTITY NOT NULL PRIMARY KEY,
	FK_keywordList INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	isActive BIT,
	isDeleted BIT,
);

INSERT INTO keywordListValue (FK_keywordList, name, isActive,isDeleted)
VALUES
('1','BMW',1,0),
('1','Mercedes',1,0),
('1','AUDI',1,0),
('1','VW',1,0),
('1','Skoda',1,0),
('2','Personalabteilung',1,0),
('2','Geschäftsführung',1,0),
('2','Controlling',1,0),
('2','Produktion',1,0),
('2','Lager',1,0),
('2','Buchhaltung',1,0);

---------------------------------------------------------------------------------------------------