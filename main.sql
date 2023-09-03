CREATE DATABASE dog;
use student;

CREATE TABLE dogs(
   Id int not null AUTO_INCREMENT,
   Name varchar(100) NOT NULL,
   Age varchar(100) NOT NULL,
   PRIMARY KEY (Id)
);

INSERT INTO dogs(Name, Age)
