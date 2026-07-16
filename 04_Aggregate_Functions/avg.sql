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

-- Calculate average salary
SELECT AVG(salary) AS Average_Salary
FROM Employee;

-- Calculate average salary of HR employees
SELECT AVG(salary) AS HR_Average_Salary
FROM Employee
WHERE department = 'HR';

-- AVG() calculates the average value of a numeric column.
-- It ignores NULL values.