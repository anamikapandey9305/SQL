-- Select the database
USE CompanyDB;

-- Create Department table
CREATE TABLE Department (

    -- Unique department ID
                            dept_id INT PRIMARY KEY,

    -- Department name
                            department_name VARCHAR(30)
);

-- Insert records into Department table
INSERT INTO Department
VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance'),
    (4, 'Marketing');

-- Create Employee table
CREATE TABLE Employee (

    -- Unique employee ID
                          emp_id INT PRIMARY KEY,

    -- Employee name
                          emp_name VARCHAR(50),

    -- Employee salary
                          salary DECIMAL(10,2),

    -- Department ID
                          dept_id INT
);

-- Insert records into Employee table
INSERT INTO Employee
VALUES
    (101, 'Anamika', 50000, 1),
    (102, 'Rahul', 45000, 2),
    (103, 'Priya', 60000, 3),
    (104, 'Amit', 55000, 1),
    (105, 'Sneha', 40000, NULL);

-- Display Employee table
SELECT * FROM Employee;

-- Display Department table
SELECT * FROM Department;

-- FULL JOIN returns all rows from both tables.
-- If there is no match, NULL is displayed.

SELECT
    Employee.emp_name,
    Department.department_name
FROM Employee
         FULL JOIN Department
                   ON Employee.dept_id = Department.dept_id;

-- Display employee name, department and salary

SELECT
    Employee.emp_name,
    Department.department_name,
    Employee.salary
FROM Employee
         FULL JOIN Department
                   ON Employee.dept_id = Department.dept_id;