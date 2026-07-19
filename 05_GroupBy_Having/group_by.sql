-- GROUP BY is used to group rows that have the same value in a column.
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
    (105, 'Sneha', 'HR', 40000),
    (106, 'Rohan', 'Finance', 65000);

-- Display all records
SELECT * FROM Employee;

-- Count employees in each department
SELECT department, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY department;

-- Calculate total salary of each department
SELECT department, SUM(salary) AS Total_Salary
FROM Employee
GROUP BY department;

-- Calculate average salary of each department
SELECT department, AVG(salary) AS Average_Salary
FROM Employee
GROUP BY department;

-- Find highest salary in each department
SELECT department, MAX(salary) AS Highest_Salary
FROM Employee
GROUP BY department;