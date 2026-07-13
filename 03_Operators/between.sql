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

-- Display employees whose salary is between 45000 and 55000
SELECT * FROM Employee
WHERE salary BETWEEN 45000 AND 55000;

-- Display employees whose employee ID is between 102 and 104
SELECT * FROM Employee
WHERE emp_id BETWEEN 102 AND 104;

-- BETWEEN is used to select values within a given range.
-- It includes both the starting and ending values.