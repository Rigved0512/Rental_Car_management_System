create database Car_Rental_System;
use Car_Rental_System;
drop database Car_Rental_System;


-- Create Cars table
CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    Brand VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT,
    RentalFeePerDay DECIMAL(8, 2)
);
select * from cars;
desc rentalpayments;
-- Insert data into Cars table
INSERT INTO Cars (CarID, Brand, Model, Year, RentalFeePerDay) VALUES
(1, 'Toyota', 'Camry', 2019, 50.00),
(2, 'Honda', 'Civic', 2020, 45.00),
(3, 'Ford', 'Mustang', 2018, 80.00),
(4, 'Chevrolet', 'Malibu', 2021, 55.00),
(5, 'Nissan', 'Altima', 2017, 60.00),
(6, 'BMW', '3 Series', 2022, 90.00),
(7, 'Audi', 'A4', 2018, 85.00),
(8, 'Hyundai', 'Sonata', 2019, 55.00),
(9, 'Kia', 'Optima', 2020, 52.00),
(10, 'Mercedes', 'C-Class', 2021, 95.00),
(11, 'Volkswagen', 'Passat', 2017, 58.00),
(12, 'Subaru', 'Legacy', 2022, 65.00),
(13, 'GMC', 'Terrain', 2019, 75.00),
(14, 'Tesla', 'Model 3', 2020, 120.00),
(15, 'Jaguar', 'XF', 2018, 110.00),
(16, 'Toyota', 'Rav4', 2021, 70.00),
(17, 'Ford', 'Explorer', 2019, 85.00),
(18, 'Chevrolet', 'Equinox', 2020, 65.00),
(19, 'Honda', 'Pilot', 2018, 90.00),
(20, 'Nissan', 'Rogue', 2022, 75.00),
(21, 'Mercedes', 'GLE', 2021, 100.00),
(22, 'Audi', 'Q5', 2017, 80.00),
(23, 'Hyundai', 'Tucson', 2023, 60.00),
(24, 'Kia', 'Sorento', 2020, 78.00),
(25, 'Subaru', 'Outback', 2022, 68.00);

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES
(101, 'John', 'Doe', 'john.doe@email.com', '555-1234'),
(102, 'Alice', 'Smith', 'alice@email.com', '555-5678'),
(103, 'Bob', 'Johnson', 'bob@email.com', '555-9876'),
(104, 'Emma', 'White', 'emma@email.com', '555-4321'),
(105, 'Chris', 'Brown', 'chris@email.com', '555-8765'),
(106, 'Olivia', 'Davis', 'olivia@email.com', '555-1111'),
(107, 'Daniel', 'Miller', 'daniel@email.com', '555-2222'),
(108, 'Sophia', 'Anderson', 'sophia@email.com', '555-3333'),
(109, 'Jackson', 'Harris', 'jackson@email.com', '555-4444'),
(110, 'Aria', 'Wilson', 'aria@email.com', '555-5555'),
(111, 'Ethan', 'Moore', 'ethan@email.com', '555-6666'),
(112, 'Mia', 'Clark', 'mia@email.com', '555-7777'),
(113, 'Liam', 'Taylor', 'liam@email.com', '555-8888'),
(114, 'Ava', 'Martin', 'ava@email.com', '555-9999'),
(115, 'Noah', 'Wright', 'noah@email.com', '555-0000');

-- Create Rentals table
CREATE TABLE Rentals (
    RentalID INT PRIMARY KEY,
    CarID INT,
    CustomerID INT,
    RentalStartDate DATE,
    RentalEndDate DATE,
    RentalStatusID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RentalStatusID) REFERENCES RentalStatus(RentalStatusID)
);
select * from Rentals;
-- Insert data into Rentals table
INSERT INTO Rentals (RentalID, CarID, CustomerID, RentalStartDate, RentalEndDate, RentalStatusID) VALUES
(201, 1, 101, '2023-01-01', '2023-01-05', 1),
(202, 3, 102, '2023-02-01', '2023-02-10', 2),
(203, 2, 103, '2023-03-01', '2023-03-07', 1),
(204, 4, 104, '2023-04-01', '2023-04-03', 3),
(205, 5, 105, '2023-05-01', '2023-05-15', 1),
(206, 6, 106, '2023-06-01', '2023-06-10', 2),
(207, 7, 107, '2023-07-01', '2023-07-07', 1),
(208, 8, 108, '2023-08-01', '2023-08-03', 3),
(209, 9, 109, '2023-09-01', '2023-09-15', 1),
(210, 10, 110, '2023-10-01', '2023-10-10', 2),
(211, 11, 111, '2023-11-01', '2023-11-05', 1),
(212, 12, 112, '2023-12-01', '2023-12-10', 2),
(213, 13, 113, '2024-01-01', '2024-01-07', 1),
(214, 14, 114, '2024-02-01', '2024-02-03', 3),
(215, 15, 115, '2024-03-01', '2024-03-15', 1),
(216, 16, 101, '2024-04-01', '2024-04-10', 2),
(217, 17, 102, '2024-05-01', '2024-05-15', 1),
(218, 18, 103, '2024-06-01', '2024-06-10', 2),
(219, 19, 104, '2024-07-01', '2024-07-07', 1),
(220, 20, 105, '2024-08-01', '2024-08-03', 3),
(221, 21, 106, '2024-09-01', '2024-09-15', 1),
(222, 22, 107, '2024-10-01', '2024-10-10', 2),
(223, 23, 108, '2024-11-01', '2024-11-05', 1),
(224, 24, 109, '2024-12-01', '2024-12-10', 2),
(225, 25, 110, '2025-01-01', '2025-01-07', 1);

-- Create RentalStatus table
CREATE TABLE RentalStatus (
    RentalStatusID INT PRIMARY KEY,
    Status VARCHAR(50) NOT NULL
);

-- Insert data into RentalStatus table
INSERT INTO RentalStatus (RentalStatusID, Status) VALUES
(1, 'Active'),
(2, 'Completed'),
(3, 'Canceled');

-- Create RentalPayments table
CREATE TABLE RentalPayments (
    PaymentID INT PRIMARY KEY,
    RentalID INT,
    Amount DECIMAL(8, 2),
    PaymentDate DATE,
    FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)
);

-- Insert data into RentalPayments table
INSERT INTO RentalPayments (PaymentID, RentalID, Amount, PaymentDate) VALUES
(301, 201, 250.00, '2023-01-05'),
(302, 202, 800.00, '2023-02-10'),
(303, 203, 315.00, '2023-03-07'),
(304, 204, 120.00, '2023-04-03'),
(305, 205, 900.00, '2023-05-15'),
(306, 206, 810.00, '2023-06-10'),
(307, 207, 350.00, '2023-07-07'),
(308, 208, 130.00, '2023-08-03'),
(309, 209, 720.00, '2023-09-15'),
(310, 210, 850.00, '2023-10-10'),
(311, 211, 211, '2023-11-05'),
(312, 212, 212, '2023-12-10'),
(313, 213, 213, '2024-01-07'),
(314, 214, 214, '2024-02-03'),
(315, 215, 215, '2024-03-15'),
(316, 216, 101, '2024-04-10'),
(317, 217, 102, '2024-05-15'),
(318, 218, 103, '2024-06-10'),
(319, 219, 104, '2024-07-07'),
(320, 220, 105, '2024-08-03'),
(321, 221, 106, '2024-09-15'),
(322, 222, 107, '2024-10-10'),
(323, 223, 108, '2024-11-05'),
(324, 224, 109, '2024-12-10'),
(325, 225, 110, '2025-01-07');


SELECT *
FROM Rentals
WHERE RentalID = (SELECT RentalID FROM RentalPayments ORDER BY Amount DESC LIMIT 1); 

SELECT *
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Rentals
    WHERE RentalStatusID = 1
);
SELECT Brand, AVG(RentalFeePerDay) AS AverageRentalFee
FROM Cars
GROUP BY Brand;

SELECT *
FROM Rentals
WHERE (RentalEndDate - RentalStartDate) = (
    SELECT MAX(RentalEndDate - RentalStartDate)
    FROM Rentals
);
SELECT *
FROM Customers
WHERE CustomerID IN (
SELECT CustomerID
FROM Rentals
GROUP BY CustomerID
HAVING COUNT(RentalID) > 1
);




SELECT Rentals.RentalID, Rentals.RentalStartDate, Rentals.RentalEndDate,
       Cars.Brand, Cars.Model
FROM Rentals
JOIN Cars ON Rentals.CarID = Cars.CarID
WHERE Cars.Brand = 'Toyota';

SELECT Cars.Brand, AVG(datediff(Rentals.RentalEndDate,Rentals.RentalStartDate)) AS AverageRentalDuration
FROM Cars
LEFT JOIN Rentals ON Cars.CarID = Rentals.CarID
GROUP BY Cars.Brand;

SELECT Rentals.RentalID, Rentals.RentalStartDate, Rentals.RentalEndDate,
       RentalStatus.Status
FROM Rentals
JOIN RentalStatus ON Rentals.RentalStatusID = RentalStatus.RentalStatusID
WHERE RentalStatus.Status = 'Active';

SELECT Rentals.RentalID, Rentals.RentalStartDate, Rentals.RentalEndDate,
       RentalPayments.Amount
FROM Rentals
JOIN RentalPayments ON Rentals.RentalID = RentalPayments.RentalID
WHERE RentalPayments.Amount > 200;


SELECT Cars.CarID, Cars.Brand, Cars.Model,RentalID,RentalStatusID
FROM Cars
LEFT JOIN Rentals ON Cars.CarID = Rentals.CarID
WHERE Brand like "B%";

