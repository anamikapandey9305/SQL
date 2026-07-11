-- Select the database
USE CompanyDB;

-- Create the Department table
CREATE TABLE Department (

    -- Department ID is the Primary Key
                            dept_id INT PRIMARY KEY,

    -- Department Name
                            dept_name VARCHAR(50)
);

-- Insert records into the Department table
INSERT INTO Department
VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');

-- Create the Employee table
CREATE TABLE Employee (

    -- Employee ID is the Primary Key
                          emp_id INT PRIMARY KEY,

    -- Employee Name
                          emp_name VARCHAR(50),

    -- Department ID is the Foreign Key
                          dept_id INT,

    -- Foreign Key connects Employee table with Department table
                          FOREIGN KEY (dept_id)
                              REFERENCES Department(dept_id)
);

-- Insert records into the Employee table
INSERT INTO Employee
VALUES
    (101, 'Anamika', 1),
    (102, 'Rahul', 2),
    (103, 'Priya', 3);

-- Display all records
SELECT * FROM Department;

SELECT * FROM Employee;


-- A Foreign Key creates a relationship between two tables.
-- It refers to the Primary Key of another table.
-- It helps maintain data consistency.
 -- it basically connects one table with another table.