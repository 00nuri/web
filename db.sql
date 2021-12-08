drop database if exists opentutorials;
create database if not exists opentutorials;

use opentutorials;

create table topic
( id INT(11) NOT NULL AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
description TEXT NULL,
created DATETIME NOT NULL,
  author VARCHAR(30) NULL,
  profile VARCHAR(100) NULL,
  PRIMARY KEY(id)); 
  
insert into topic (title,description,created,author,profile) values ('ORACLE','ORACLE is ...',now(),'egoing','developer');
insert into topic (title,description,created,author,profile) values ('SQL Server','SQL Server is ...',now(),'duru','data scientist, developer');
insert into topic (title,description,created,author,profile) values ('PostgreSQL','PostgreSQL is ...',now(),'taeho','data scientist, developer');
insert into topic (title,description,created,author,profile) values ('MongoDB','MongoDB is ...',now(),'egoing','developer');

select*from topic;
select id, title, created, author from topic;
select id, title, created, author from topic where author='egoing';
select id, title, created, author from topic where author='egoing' order by id desc;
update topic set description='Oracle is ...',title='Oracle' where id=2;
select * from topic;
rename table topic to topic_backup;
show tables;

CREATE TABLE author (
id int(11) NOT NULL AUTO_INCREMENT,
name varchar(20) NOT NULL,
profile varchar(200) DEFAULT NULL,
PRIMARY KEY (id)
);

INSERT INTO `author` VALUES (1,'egoing','developer');
INSERT INTO `author` VALUES (2,'duru','database administrator');
INSERT INTO `author` VALUES (3,'taeho','data scientist, developer');
select * from author;

CREATE TABLE topic (
id int(11) NOT NULL AUTO_INCREMENT,
title varchar(30) NOT NULL,
description text,
created datetime NOT NULL,
author_id int(11) DEFAULT NULL,
PRIMARY KEY (id)
);

INSERT INTO `topic` VALUES (1,'MySQL','MySQL is...','2018-01-01 12:10:11',1);
INSERT INTO `topic` VALUES (2,'Oracle','Oracle is ...','2018-01-03 13:01:10',1);
INSERT INTO `topic` VALUES (3,'SQL Server','SQL Server is ...','2018-01-20 11:01:10',2);
INSERT INTO `topic` VALUES (4,'PostgreSQL','PostgreSQL is ...','2018-01-23 01:03:03',3);
INSERT INTO `topic` VALUES (5,'MongoDB','MongoDB is ...','2018-01-30 12:31:03',1);
select * from topic;

select * from topic left join author on topic.author_id = author.id;
select topic.id,title,description,created,name,profile from topic left join author on topic.author_id = author.id;
select topic.id as topic_id,title,description,created,name,profile from topic left join author on topic.author_id = author.id;

