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

-- AND Operator
-- Display employees who are in IT department and have salary greater than 50000
SELECT * FROM Employee
WHERE department = 'IT' AND salary > 50000;

-- OR Operator
-- Display employees who are in HR department or have salary greater than 55000
SELECT * FROM Employee
WHERE department = 'HR' OR salary > 55000;

-- NOT Operator
-- Display employees who are not in the IT department
SELECT * FROM Employee
WHERE NOT department = 'IT';

 -- AND → All conditions must be true.
 -- OR → At least one condition must be true.
 -- NOT → Reverses the condition.