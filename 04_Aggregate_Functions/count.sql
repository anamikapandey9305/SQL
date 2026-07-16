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

-- Count total employees
SELECT COUNT(*) AS Total_Employees
FROM Employee;

-- Count employees in the IT department
SELECT COUNT(*) AS IT_Employees
FROM Employee
WHERE department = 'IT';

 -- COUNT() counts the number of rows.
 -- COUNT(*) counts all rows.
 -- COUNT(column_name) counts only non-NULL values