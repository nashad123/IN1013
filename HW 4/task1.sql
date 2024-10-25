
-- DROP DATABASE IF EXISTS pet_database;
-- CREATE DATABASE pet_database;
-- USE pet_database;

CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY, 
    owner VARCHAR(45), 
    species VARCHAR(45), 
    gender ENUM ('M', 'F'),
    birth DATE, 
    death DATE
);

CREATE TABLE petEVENT (
    petname VARCHAR(20) PRIMARY KEY, 
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255)
);





