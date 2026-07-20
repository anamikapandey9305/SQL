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
    (105, 'Sneha', 'HR', 40000),
    (106, 'Rohan', 'Finance', 65000);

-- Display Employee table
SELECT * FROM Employee;

-- A multiple row subquery returns more than one value.

-- Find employees who belong to IT or HR departments.

SELECT *
FROM Employee
WHERE department IN (

    SELECT department
    FROM Employee
    WHERE department IN ('IT', 'HR')

);

-- Find employees whose salary is greater than ANY salary
-- of employees in the HR department.

SELECT *
FROM Employee
WHERE salary > ANY (

    SELECT salary
    FROM Employee
    WHERE department = 'HR'

);

-- Find employees whose salary is greater than ALL salaries
-- of employees in the HR department.

SELECT *
FROM Employee
WHERE salary > ALL (

    SELECT salary
    FROM Employee
    WHERE department = 'HR'

);

-- operators used
 -- IN , ANY, ALL
-- ANY → Condition must be true for at least one value.
-- ALL → Condition must be true for every value.