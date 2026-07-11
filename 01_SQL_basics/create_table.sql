-- Select the database
USE CompanyDB;

-- Create a table named Employee
CREATE TABLE Employee (

    -- Employee ID (Unique for every employee)
                          emp_id INT PRIMARY KEY,

    -- Employee Name
                          emp_name VARCHAR(50),

    -- Employee Salary
                          salary DECIMAL(10,2),

    -- Employee Department
                          department VARCHAR(30)
);

-- Show all tables in the database
SHOW TABLES;

-- Display the structure of the Employee table
DESCRIBE Employee;