DROP DATABASE IMDBStructure;

CREATE DATABASE IMDBStructure;
USE IMDBStructure;

CREATE TABLE Movies (
Id INT PRIMARY KEY, 
Name VARCHAR(42), 
YearOfRelease Date, 
Plot VARCHAR(100), 
Image NVARCHAR(MAX),
ProducerId INT);

CREATE TABLE Actors (
Id INT PRIMARY KEY, 
Name VARCHAR(42), 
Gender VARCHAR(10), 
DOB Date, 
Bio VARCHAR(40));

CREATE TABLE Producers (
Id INT PRIMARY KEY, 
Name VARCHAR(42), 
Gender VARCHAR(10), 
DOB Date, 
Bio VARCHAR(40));

CREATE TABLE Genres (
Id INT PRIMARY KEY, 
Name VARCHAR(42));

CREATE TABLE MovieActorMapping(
Id INT PRIMARY KEY,
MovieId INT FOREIGN KEY REFERENCES Movies(Id), 
ActorId INT FOREIGN KEY REFERENCES Actors(Id));

CREATE TABLE MovieGenreMapping(
Id INT PRIMARY KEY,
MovieId INT FOREIGN KEY REFERENCES Movies(Id), 
GenreId INT FOREIGN KEY REFERENCES Genres(Id));

CREATE TABLE Reviews(
Id INT PRIMARY KEY, 
MovieId INT FOREIGN KEY REFERENCES Movies(Id), 
Review NVARCHAR(500));