DROP DATABASE IF Exists blogentries_db;

CREATE DATABASE blogentries_db;

USE blogentries_db;

CREATE TABLE users(
id INTEGER NOT NULL AUTO_INCREMENT,
full_name VARCHAR(50) NOT NULL,
numOfPosts INT NOT NULL,
createdAt TIMESTAMP,
updatedAt TIMESTAMP,
PRIMARY KEY (id)
);

CREATE TABLE posts(
id INTEGER NOT NULL AUTO_INCREMENT,
userID INT NOT NULL,
title VARCHAR(150) NOT NULL,
authorName VARCHAR(50) NOT NULL,
body VARCHAR(255) NOT NULL,
category VARCHAR(30) NOT NULL,
createdAt TIMESTAMP,
updatedAt TIMESTAMP,
PRIMARY KEY (id)
);