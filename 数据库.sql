SET NAMES UTF8;
DROP DATABASE IF EXISTS mv;
CREATE DATABASE mv CHARSET=UTF8;
USE mv;
CREATE TABLE user_list(
uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
uname VARCHAR(32),
upwd VARCHAR(32),
email VARCHAR(64),
phone VARCHAR(16) NOT NULL UNIQUE,
avatar VARCHAR(128),
user_name VARCHAR(32),
gender INT
);
CREATE TABLE mv_country_family(
cid INT PRIMARY KEY AUTO_INCREMENT,
cname VARCHAR(16) 
);
CREATE TABLE mv_type_family(
tid INT PRIMARY KEY AUTO_INCREMENT,
tname VARCHAR(16)
);
CREATE TABLE mv_info(
iid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(32),
score DECIMAL(2,1),
pic VARCHAR(128),
release_time SMALLINT,
country VARCHAR(32),
type VARCHAR(32),
director VARCHAR(32),
starring VARCHAR(32),
alternate_name VARCHAR(32),
plot VARCHAR(128),
url VARCHAR(128)
);
CREATE TABLE index_carousel(
cid INT PRIMARY KEY AUTO_INCREMENT,
img VARCHAR(128),
title VARCHAR(64),
href VARCHAR(128)
);
CREATE TABLE index_mvs(
iid INT PRIMARY KEY AUTO_INCREMENT,
pic VARCHAR(128),
release_time SMALLINT,
score DECIMAL(2,1),
director VARCHAR(32),
starring VARCHAR(32),
url VARCHAR(128)
);
