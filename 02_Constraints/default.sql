-- Select the database
USE CompanyDB;

-- Create a table with DEFAULT constraint
CREATE TABLE Employee (

    -- Employee ID
                          emp_id INT PRIMARY KEY,

    -- Employee Name
                          emp_name VARCHAR(50) NOT NULL,

    -- Department will be IT if no value is given
                          department VARCHAR(30) DEFAULT 'IT',

    -- Salary
                          salary DECIMAL(10,2)
);

-- Insert records

-- Department is provided
INSERT INTO Employee
VALUES
    (101, 'Anamika', 'HR', 50000);

-- Department is not provided
-- DEFAULT value 'IT' will be used
INSERT INTO Employee (emp_id, emp_name, salary)
VALUES
    (102, 'Rahul', 45000);

-- Display all records
SELECT * FROM Employee;



-- DEFAULT gives a column a value automatically if you don't provide one.
-- It helps avoid empty values for commonly used data.