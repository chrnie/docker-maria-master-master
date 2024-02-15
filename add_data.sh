#!/usr/bin/env sh

MYSQL_ROOT_PASSWORD=rut
MYSQL_DATABASE=myExampleDB

docker container exec -it mysql1 mysql --password=${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} -e "
CREATE TABLE IF NOT EXISTS Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);
INSERT INTO Persons (FirstName,LastName) VALUES ('Jan','Hansen');
INSERT INTO Persons (FirstName,LastName) VALUES ('Jim','Hinsen');
INSERT INTO Persons (FirstName,LastName) VALUES ('Jom','Honsen');
"

docker container exec -it mysql2 mysql --password=${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} -e "
CREATE TABLE IF NOT EXISTS Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);
INSERT INTO Persons (FirstName,LastName) VALUES ('Mike','Mouse');
INSERT INTO Persons (FirstName,LastName) VALUES ('Manfred','Mouse');
INSERT INTO Persons (FirstName,LastName) VALUES ('Marlon','Mouse');
"
