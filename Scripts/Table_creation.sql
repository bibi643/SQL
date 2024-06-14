--Table creation with SQL commands

--Designer Table
CREATE TABLE Designers (
	Designer_Name VARCHAR(200) PRIMARY KEY,
	Designer_Nationality VARCHAR(50)
)


-- Duration Table
CREATE TABLE Durations (
	Duration VARCHAR(50) PRIMARY KEY)


--Nose Table
CREATE TABLE Noses (
	Nose_Names TEXT PRIMARY KEY)
	



-- Season Table

CREATE TABLE Seasons (
	Season TEXT PRIMARY KEY)


--Type Table
CREATE TABLE Types (
	Type_Name VARCHAR(50) PRIMARY KEY)


-- Fragrance Table
CREATE TABLE Fragrances(
Fragrance_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
Designer_ID VARCHAR(100),
Name VARCHAR(100),
Type_ID VARCHAR(50),
Tope_Note TEXT,
Middle_Note TEXT,
Base_Note TEXT,
Season_ID VARCHAR(50),
Duration_ID VARCHAR(10),
Comment TEXT,
Nose_ID TEXT,
Release_year YEAR,
Ratings INT CHECK (Ratings >0 AND Ratings <=20),
FOREIGN KEY (Designer_ID) REFERENCES Designers(Designer_Name),
FOREIGN KEY (Type_ID) REFERENCES Types(Type_Name),
FOREIGN KEY (Season_ID) REFERENCES Seasons(Season),
FOREIGN KEY (Duration_ID) REFERENCES Durations(Duration),
FOREIGN KEY (Nose_ID) REFERENCES Noses(Nose_Names)
);
	





