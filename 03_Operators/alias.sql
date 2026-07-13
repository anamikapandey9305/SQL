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

-- Rename the column name in the output
SELECT emp_name AS Employee_Name,
       salary AS Employee_Salary
FROM Employee;

-- Rename the table using an alias
SELECT e.emp_name, e.department
FROM Employee AS e;


-- AS is used to give a temporary name (alias) to a column or table.
-- Aliases make query results easier to read.