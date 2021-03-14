#Group 23 DK BE-IT. Amin, leurant, sohaib and Muhammed Taha
#Run script and refresh schemas, and the tables will be added to a new database.
CREATE DATABASE coderstrust;
USE coderstrust;
CREATE TABLE `Quiz` (
  `Title` varchar(50),
  `User ID` varchar(20),
  KEY `Pk` (`Title`),
  KEY `Fk` (`User ID`)
);

CREATE TABLE `User` (
  `First name` char (50),
  `Lastname` char(20),
  `User ID` varchar (20),
  KEY `Pk` (`User ID`)
);

CREATE TABLE `Questions` (
  `User ID` varchar(20),
  `Quiz title` varchar(50),
  `Question ID` int,
  `Question` varchar(100),
  `yes or no` varchar(10),
  `Points` int,
  `Dominant area` varchar(50),
  KEY `Fk` (`User ID`, `Quiz title`, `Dominant area`),
  KEY `Pk` (`Question ID`)
);

CREATE TABLE `Result` (
  `Quiz title` varchar(50),
  `User ID` varchar (20),
  `SoMe % result` varchar(30),
  `Graphical design % result` varchar(30),
  `Programming % result` varchar(30),
  `Dominant area` varchar (50),
  KEY `Fk` (`Quiz title`, `User ID`),
  KEY `Pk` (`Dominant area`)
);

#to populate columns, run file "CT_data.sql"

