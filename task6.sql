create database Employee;

use Employee;


-- Step 1: Create the Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- Step 2: Insert Sample Data
INSERT INTO Employees (Name, Position, Salary, HireDate) VALUES
    ('Alice Johnson', 'Software Engineer', 75000.00, '2021-06-15'),
    ('Bob Smith', 'Data Analyst', 65000.00, '2020-08-20'),
    ('Charlie Brown', 'Project Manager', 90000.00, '2019-05-10'),
    ('David Lee', 'HR Specialist', 50000.00, '2022-02-01'),
    ('Eve Adams', 'Marketing Manager', 72000.00, '2018-07-25'),
    ('Frank Miller', 'Software Engineer', 80000.00, '2017-03-14'),
    ('Grace Wilson', 'Data Scientist', 95000.00, '2016-11-30'),
    ('Hank Green', 'Sales Executive', 60000.00, '2020-09-10'),
    ('Ivy Carter', 'Business Analyst', 70000.00, '2021-04-05'),
    ('Jack White', 'HR Manager', 55000.00, '2019-10-15'),
    ('Karen Black', 'Software Developer', 78000.00, '2018-06-22'),
    ('Leo Turner', 'IT Support', 52000.00, '2023-01-01');

-- Step 3: Modify Table Structure
-- Adding new columns to the table
ALTER TABLE Employees ADD COLUMN LastUpdated DATE;
ALTER TABLE Employees ADD COLUMN Status VARCHAR(10) DEFAULT 'Active';
SET SQL_SAFE_UPDATES = 0;

UPDATE Employees SET LastUpdated = CURDATE() WHERE EmployeeID > 0;
UPDATE Employees SET Status = 'Active' WHERE EmployeeID > 0 AND Status IS NULL;


SET SQL_SAFE_UPDATES = 1;

-- Step 4: Populate the new columns
UPDATE Employees SET LastUpdated = CURDATE() WHERE EmployeeID > 0;
UPDATE Employees SET Status = 'Active' WHERE EmployeeID > 0 AND Status IS NULL;


-- Step 5: Delete Records Based on Conditions
-- Deleting records where Status is 'Inactive'
DELETE FROM Employees WHERE Status = 'Inactive';

-- Deleting records older than a specific date (e.g., older than '2023-01-01')
DELETE FROM Employees WHERE LastUpdated < '2023-01-01';

-- Step 6: Validation
-- Checking the updated table structure
DESCRIBE Employees;

-- Verifying the remaining records after deletions
SELECT * FROM Employees;
