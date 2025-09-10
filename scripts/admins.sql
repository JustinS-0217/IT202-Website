SHOW DATABASES;

CREATE TABLE admins (
adminID INT(22) NOT NULL AUTO_INCREMENT,
emailAddress VARCHAR(255) NOT NULL UNIQUE,
password CHAR(64) NOT NULL,
firstName VARCHAR(60) NOT NULL,
lastName VARCHAR(60) NOT NULL,
PRIMARY KEY (adminID)
);

SHOW TABLES;

SHOW CREATE TABLE admins;

DESCRIBE admins;

INSERT INTO admins (emailAddress, password, firstName, lastName)
VALUES ('taylor@guitarshop.com', SHA2('myL0ngP@ssword', 256), 'Taylor', 'Swift');

INSERT INTO admins (emailAddress, password, firstName, lastName)
VALUES ('justin@guitarshop.com', SHA2('myL0ngP@ssword', 256), 'Justin', 'Bieber');

SELECT * FROM admins WHERE lastName = 'Swift';

UPDATE admins SET emailAddress = 'taylor.swift@guitarshop.com' WHERE adminID = 1;

UPDATE admins SET emailAddress = 'justin.bieber@guitarshop.com', password = SHA2('mySh0rtP@ssword', 256) WHERE adminID = 2;

DELETE FROM admins WHERE adminID = 1;
