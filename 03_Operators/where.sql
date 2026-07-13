-- Select the database
-- WHERE is used to filter records.
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

-- Display employees from IT department
SELECT * FROM Employee
WHERE department = 'IT';

-- Display employees with salary greater than 50000
SELECT * FROM Employee
WHERE salary > 50000;

-- Display employee with ID 101
SELECT * FROM Employee
WHERE emp_id = 101;