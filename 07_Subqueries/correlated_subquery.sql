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
    (102, 'Rahul', 'IT', 55000),
    (103, 'Priya', 'HR', 45000),
    (104, 'Amit', 'HR', 40000),
    (105, 'Sneha', 'Finance', 65000),
    (106, 'Rohan', 'Finance', 60000);

-- Display Employee table
SELECT * FROM Employee;

-- A correlated subquery depends on the outer query.
-- The inner query runs once for every row of the outer query.

-- Display employees whose salary is greater than
-- the average salary of their own department.

SELECT
    emp_name,
    department,
    salary
FROM Employee E1
WHERE salary >

      (
          SELECT AVG(salary)
          FROM Employee E2
          WHERE E1.department = E2.department
      );

-- Display employees whose salary is the highest
-- in their department.

SELECT
    emp_name,
    department,
    salary
FROM Employee E1
WHERE salary =

      (
          SELECT MAX(salary)
          FROM Employee E2
          WHERE E1.department = E2.department
      );

-- A Correlated Subquery is a subquery that depends on the outer query.
-- Correlated subquery runs once for every row of the outer query.
