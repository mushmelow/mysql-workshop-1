CREATE DATABASE chickens;

USE chickens;

CREATE TABLE chickens ( 
id INT AUTO_INCREMENT PRIMARY KEY,
created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --add time when this id was created
age DATE not null,
type ENUM('chicks', 'rooster', 'hen')
);


