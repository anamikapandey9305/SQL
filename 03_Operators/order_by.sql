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

-- Display employees in ascending order of salary
SELECT * FROM Employee
ORDER BY salary ASC;

-- Display employees in descending order of salary
SELECT * FROM Employee
ORDER BY salary DESC;

-- Display employees in alphabetical order of name
SELECT * FROM Employee
ORDER BY emp_name ASC;

-- Display employees in reverse alphabetical order of name
SELECT * FROM Employee
ORDER BY emp_name DESC;

-- ORDER BY is used to sort the result.
-- ASC → Ascending order (default).
-- DESC → Descending order.