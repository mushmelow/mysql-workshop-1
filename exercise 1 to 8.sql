-- stat my sql server
mysql-ctl start
mysql-ctl cli

--

--create a newtable
CREATE DATABASE decodemtl_test;  
CREATE DATABASE decodemtl_addressbook;
--

-- delete a dabase
DROP DATABASE decodemtl_test;
--

--select a database
USE decodemtl_test;
--

-- show all databases
SHOW DATABESES;
--

-- create table in database
CREATE TABLE decodemtl_addressbook.Account (
    personId int
);

CREATE TABLE decodemtl_addressbook.AddressBook (
    personId int
);


CREATE TABLE decodemtl_addressbook.Entry (
    personId int
);

CREATE TABLE decodemtl_addressbook.Test (
    personId int
);

-- when creating a table make sure to the field is not empty otherwise
--it will not work



-- delete table from a database
DROP TABLE Test;
--

-- show tables in a database
SHOW TABLES;
--

-- print what is inside a table
SELECT * FROM Account;

-- create new column in my tables
ALTER TABLE Account 
ADD id INT AUTO_INCREMENT PRIMARY KEY,
ADD email VARCHAR(255)not null,
ADD password VARCHAR(40)not null,
ADD createdOn DATETIME not null,
ADD modifiedOn DATETIME;


-- not null mean it is mendatory to have a value other

--show how i created my code
SHOW CREAT TABLE Account
--

--check columns description in my tables
DESCRIBE Account; 
--

-- remove table 
ALTER TABLE Account 
DROP personId;
--


-- create new column in my tables
ALTER TABLE AddressBook
ADD id INT AUTO_INCREMENT PRIMARY KEY,
ADD accountId INT;
ADD NAME VARCHAR(255)not null,
ADD createdOn DATETIME not null,
ADD modifiedOn DATETIME;


-- assign Account.id to AddressBook.accountId using a FOREIGN KEY

--ALTER TABLE nameOfTheTable that we want to modify
--ADD FOREIGN KEY (nameOfTheColumn) References nameOfTable we want to link(column we want to link)
ALTER TABLE AddressBook
   ADD FOREIGN KEY (accountId) REFERENCES Account (ID);
--
  
ALTER TABLE Entry
ADD id INT AUTO_INCREMENT PRIMARY KEY,
ADD addressBookId INT;
ADD firstName VARCHAR(255)not null, 
ADD lastName VARCHAR(255),
ADD birthday DATETIME not null,
ADD type ENUM('home', 'work', 'other'),
ADD subtype ENUM('phone','address','email'),
ADD contentLineOne VARCHAR(255) not null,
ADD contentLineTwo VARCHAR(255),
ADD contentLineThree VARCHAR(255),
ADD contentLineFour VARCHAR(255),
ADD contentLineFive VARCHAR(255);


ALTER TABLE Entry
ADD FOREIGN KEY (addressBookId) REFERENCES AddressBook (id);
