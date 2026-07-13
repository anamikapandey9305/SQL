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
    (102, 'Rahul', NULL, 45000),
    (103, 'Priya', 'Finance', 60000),
    (104, 'Amit', NULL, 55000),
    (105, 'Sneha', 'HR', 40000);

-- Display all records
SELECT * FROM Employee;

-- Display employees whose department is NULL
SELECT * FROM Employee
WHERE department IS NULL;

-- Display employees whose department is NOT NULL
SELECT * FROM Employee
WHERE department IS NOT NULL;

-- IS NULL is used to find rows where a column has no value (NULL).
-- IS NOT NULL is used to find rows where a column has a value.