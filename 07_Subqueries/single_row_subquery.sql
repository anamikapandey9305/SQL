-- Select the database
USE CompanyDB;

-- Create Employee table
CREATE TABLE Employee (

    -- Unique employee ID
                          emp_id INT PRIMARY KEY,

    -- Employee name
                          emp_name VARCHAR(50),

    -- Department
                          department VARCHAR(30),

    -- Employee salary
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

-- Display Employee table
SELECT * FROM Employee;

-- A subquery is a query inside another query.

-- Find the employee who has the highest salary.

-- Step 1:
-- The inner query finds the highest salary.

SELECT MAX(salary)
FROM Employee;

-- Step 2:
-- The outer query finds the employee whose salary
-- is equal to the highest salary returned by the inner query.

SELECT *
FROM Employee
WHERE salary = (

    SELECT MAX(salary)
    FROM Employee

);

-- Find employees whose salary is greater than the average salary.

SELECT *
FROM Employee
WHERE salary > (

    SELECT AVG(salary)
    FROM Employee

);

-- A Subquery is a query inside another query.

 -- Why is it called a Single Row Subquery?
-- Because the inner query returns only one value.