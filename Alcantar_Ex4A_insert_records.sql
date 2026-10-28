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

USE lana_dog_walking;
INSERT INTO customers
(CustomerID, FirstName, LastName, PhoneNumber, Address)
VALUES
(1, 'Cesar', 'Lopez', '650-398-7183', '123 Mcallen AVe'),
(2, 'Maria', 'Garcia', '555-234-5678', '456 Oak St'),
(3, 'David', 'Johnson', '555-345-6789', '789 Pine Ave'),
(4, 'Sofia', 'Martinez', '555-456-7890', '101 Maple St'),
(5, 'James', 'Brown', '555-567-8901', '202 Cedar Ave'),
(6, 'Emily', 'Davis', '555-678-9012', '303 Elm St'),
(7, 'Daniel', 'Wilson', '555-789-0123', '404 Birch Rd'),
(8, 'Olivia', 'Taylor', '555-890-1234', '505 Willow Ln'),
(9, 'Michael', 'Anderson', '555-901-2345', '606 Cherry St'),
(10, 'Isabella', 'Thomas', '555-012-3456', '707 Walnut Ave'),
(11, 'Ethan', 'Moore', '555-123-4568', '808 Spruce Rd');

INSERT INTO dogs
(DogID, DogName, Breed, DateOfBirth, SpecialNeeds, CustomerID)
VALUES
(1, 'Twinkie', 'Poodle', '2025-12-20', 'None', 1),
(2, 'Max', 'Labrador', '2021-04-12', 'None', 2),
(3, 'Bella', 'Poodle', '2020-08-20', 'None', 3),
(4, 'Charlie', 'Beagle', '2022-01-15', 'Avoid stairs', 4),
(5, 'Luna', 'Husky', '2021-11-03', 'None', 5),
(6, 'Cooper', 'Bulldog', '2019-06-22', 'Short walks', 6),
(7, 'Daisy', 'Terrier', '2023-02-10', 'None', 7),
(8, 'Rocky', 'Boxer', '2020-09-14', 'None', 8),
(9, 'Milo', 'Dachshund', '2022-07-08', 'Avoid stairs', 9),
(10, 'Lucy', 'Shih Tzu', '2021-12-19', 'None', 10),
(11, 'Teddy', 'Pomeranian', '2023-05-25', 'None', 11);

INSERT INTO walks
(WalkID, WalkDate, StartTime, Duration, Price, DogID)
VALUES
(1, '2026-10-20', '9:00:00', 60, 30.00, 1),
(2, '2026-10-20', '09:00:00', 60, 30.00, 2),
(3, '2026-10-20', '10:00:00', 30, 20.00, 3),
(4, '2026-10-21', '08:30:00', 45, 25.00, 4),
(5, '2026-10-21', '11:00:00', 60, 30.00, 5),
(6, '2026-10-22', '09:30:00', 30, 20.00, 6),
(7, '2026-10-22', '13:00:00', 60, 30.00, 7),
(8, '2026-10-23', '08:00:00', 45, 25.00, 8),
(9, '2026-10-23', '10:30:00', 30, 20.00, 9),
(10, '2026-10-24', '09:00:00', 60, 30.00, 10),
(11, '2026-10-24', '11:00:00', 45, 25.00, 11);

INSERT INTO payments
(PaymentID, WalkID, Amount, PaymentDate, PaymentMethod)
VALUES
(1, 1, 30.00, '2026-10-20', 'Cash'),
(2, 2, 30.00, '2026-10-20', 'Cash'),
(3, 3, 20.00, '2026-10-20', 'Card'),
(4, 4, 25.00, '2026-10-21', 'Cash'),
(5, 5, 30.00, '2026-10-21', 'Card'),
(6, 6, 20.00, '2026-10-22', 'Cash'),
(7, 7, 30.00, '2026-10-22', 'Card'),
(8, 8, 25.00, '2026-10-23', 'Cash'),
(9, 9, 20.00, '2026-10-23', 'Card'),
(10, 10, 30.00, '2026-10-24', 'Cash'),
(11, 11, 25.00, '2026-10-24', 'Card');

(SELECT *
FROM customers);


