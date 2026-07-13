-- Select the database
USE CompanyDB;

-- Create Employee table
CREATE TABLE Employee (

                          emp_id INT PRIMARY KEY,
                          emp_name VARCHAR(50),
                          department VARCHAR(30),
                          salary DECIMAL(10,2)
);

-- Insert records
INSERT INTO Employee
VALUES
    (101, 'Anamika', 'IT', 50000),
    (102, 'Rahul', 'HR', 45000),
    (103, 'Priya', 'Finance', 60000),
    (104, 'Amit', 'IT', 55000),
    (105, 'Sneha', 'HR', 40000);

-- Display all records
SELECT * FROM Employee;

-- Display employees who belong to IT or HR department
SELECT * FROM Employee
WHERE department IN ('IT', 'HR');

-- Display employees whose ID is 101, 103 or 105
SELECT * FROM Employee
WHERE emp_id IN (101, 103, 105);

-- Display employees whose salary is 40000 or 60000
SELECT * FROM Employee
WHERE salary IN (40000, 60000);

-- IN is used to check if a value matches any value in a list.
-- It is a shorter and cleaner alternative to using multiple OR conditions.
