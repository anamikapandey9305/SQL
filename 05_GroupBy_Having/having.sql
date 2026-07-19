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

-- Display departments having more than 1 employee
SELECT department, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY department
HAVING COUNT(*) > 1;

-- Display departments whose average salary is greater than 50000
SELECT department, AVG(salary) AS Average_Salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 50000;

-- Display departments whose total salary is greater than 100000
SELECT department, SUM(salary) AS Total_Salary
FROM Employee
GROUP BY department
HAVING SUM(salary) > 100000;

-- HAVING is used to filter grouped data.
-- It is always used after GROUP BY.