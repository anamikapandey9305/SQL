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

-- Calculate total salary of all employees
SELECT SUM(salary) AS Total_Salary
FROM Employee;

-- Calculate total salary of IT employees
SELECT SUM(salary) AS IT_Total_Salary
FROM Employee
WHERE department = 'IT';

-- SUM() adds all numeric values in a column.
 -- It works only with numeric data types.