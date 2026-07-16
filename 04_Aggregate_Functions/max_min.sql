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
 -- MAX() returns the highest value.
     -- MIN() returns the lowest value.


-- Find the highest salary
SELECT MAX(salary) AS Highest_Salary
FROM Employee;

-- Find the lowest salary
SELECT MIN(salary) AS Lowest_Salary
FROM Employee;

-- Find highest and lowest salary together
SELECT
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary
FROM Employee;