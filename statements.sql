CREATE DATABASE jongerenkansrijker;

USE jongerenkansrijker;

CREATE TABLE jongere(
	jongerecode INT NOT NULL AUTO_INCREMENT,
	roepnaam VARCHAR(20) NOT NULL,
	tussenvoegsel VARCHAR(7),
	achternaam VARCHAR(30) NOT NULL,
	inschrijfdatum DATE NOT NULL,
	PRIMARY KEY(jongerecode)
); 

CREATE TABLE instituut(
	instituutcode VARCHAR(5) NOT NULL,
	instituut VARCHAR(40),
	instituuttelefoon VARCHAR(11),
	PRIMARY KEY(instituutcode)
);

CREATE TABLE activiteit(
	activiteitcode VARCHAR(3) NOT NULL,
	activiteit VARCHAR(40),
	PRIMARY KEY(activiteitcode)
);

CREATE TABLE jongereactiviteit(
	jongerecode INT,
	actiecode VARCHAR(3),
	startdatum DATE NOT NULL,
	afgerond TINYINT(1) NOT NULL,
	FOREIGN KEY(jongerecode) REFERENCES jongere(jongerecode),
	FOREIGN KEY(actiecode) REFERENCES activiteit(activiteitcode)
); 

CREATE TABLE jongereinstituut(
	jongerecode INT,
	instituutcode VARCHAR(5),
	startdatum DATE NOT NULL,
	FOREIGN KEY(jongerecode) REFERENCES jongere(jongerecode),
	FOREIGN KEY(instituutcode) REFERENCES instituut(instituutcode)
);

