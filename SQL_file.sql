create database students;
use students;

-- Question 11
CREATE TABLE Student (
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(25)
);
INSERT INTO Student (ID, Name, Age, Address) VALUES
    (1, 'jivitesh', 21, 'aligarh'),
    (2, 'rahul', 22, 'aligarh'),
    (3, 'pranjal', 20, 'jaipur'),
    (4, 'salman', 23, 'kanpur'),
    (5, 'shubham', 21, 'agra');
 SELECT * FROM Student;
 
 -- Question 12
 SELECT * FROM Student
ORDER BY Age ASC
LIMIT 1;

 -- Question 13
-- not able to solve

-- Question 14
SELECT MAX(Age) AS SecondHighestAge
FROM Student
WHERE Age < (SELECT MAX(Age) FROM Student);

-- Question 15
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employee (EmployeeID, Name, Salary)
VALUES
    (1, 'John', 50000),
    (2, 'Jane', 60000),
    (3, 'Bob', 55000),
    (4, 'Alice', 75000),
    (5, 'David', 62000);
SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC limit 1;

-- Question 16
-- not able to solve

-- Question 17
-- not able to solve

-- Question 18
-- not able to solve


 -- Question 19
 -- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Insert sample values into Customers table
INSERT INTO Customers (CustomerID, CustomerName)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie'),
    (4, 'David'),
    (5, 'Eve');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

-- Insert sample values into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (101, 1, '2023-01-01'),
    (102, 1, '2023-02-01'),
    (103, 2, '2023-01-15'),
    (104, 3, '2023-02-20'),
    (105, 4, '2023-03-10'),
    (106, 1, '2023-03-05'),
    (107, 2, '2023-03-15'),
    (108, 4, '2023-03-25'),
    (109, 5, '2023-04-01'),
    (110, 5, '2023-04-15');

-- Query to retrieve top 5 customers with most orders
SELECT
c.CustomerName,
COUNT(o.OrderID) AS OrderCount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY OrderCount DESC, c.CustomerName ASC
LIMIT 5;

-- Question 20
-- not able to ssolve