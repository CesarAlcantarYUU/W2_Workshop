DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
	CustomerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    PRIMARY KEY (CustomerID)
);

-- Create the dogs table underneath
CREATE TABLE Dogs (
DogID INT NOT NULL AUTO_INCREMENT,
DogName VARCHAR(100) NOT NULL,
Breed VARCHAR(100),
DateOfBirth DATE,
SpecialNeeds VARCHAR(255),
CustomerID INT NOT NULL,
PRIMARY KEY (DogID),
FOREIGN KEY (CustomerID)
	REFERENCES Customers(CustomerID)
);

-- Create the Walks table underneath
CREATE TABLE Walks (
WalkID INT NOT NULL AUTO_INCREMENT,
WalkDate DATE NOT NULL,
StartTime TIME NOT NULL,
Duration INT,
Price DECIMAL(8,2),
DogID INT NOT NULL,
PRIMARY KEY (WalkID),
FOREIGN KEY (DogID)
	REFERENCES Dogs(DogID)
);

-- Create the payments table underneath
CREATE TABLE Payments (
PaymentID INT NOT NULL AUTO_INCREMENT,
WalkID INT NOT NULL,
Amount DECIMAL(8,2) NOT NULL,
PaymentDate DATE NOT NULL,
PaymentMethod VARCHAR(50),
PRIMARY KEY (PaymentID),
FOREIGN KEY (WalkID)
	REFERENCES Walks(WalkID)
);
