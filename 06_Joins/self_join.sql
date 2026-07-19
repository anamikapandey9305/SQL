-- Select the database
USE CompanyDB;

-- Create Employee table
CREATE TABLE Employee (

    -- Unique employee ID
                          emp_id INT PRIMARY KEY,

    -- Employee name
                          emp_name VARCHAR(50),

    -- Manager ID
    -- This stores the emp_id of the employee's manager
                          manager_id INT
);

-- Insert records
INSERT INTO Employee
VALUES
    (101, 'Anamika', NULL),
    (102, 'Rahul', 101),
    (103, 'Priya', 101),
    (104, 'Amit', 102),
    (105, 'Sneha', 102);

-- Display Employee table
SELECT * FROM Employee;

-- SELF JOIN joins a table with itself.
-- Here, one copy of the Employee table represents employees,
-- and the other copy represents managers.

SELECT
    E.emp_name AS Employee_Name,
    M.emp_name AS Manager_Name
FROM Employee E
         JOIN Employee M
              ON E.manager_id = M.emp_id;

-- Display employee ID, employee name and manager name

SELECT
    E.emp_id,
    E.emp_name AS Employee_Name,
    M.emp_name AS Manager_Name
FROM Employee E
         JOIN Employee M
              ON E.manager_id = M.emp_id;