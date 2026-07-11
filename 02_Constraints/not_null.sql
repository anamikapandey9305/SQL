-- Select the database
USE CompanyDB;

-- Create a table with NOT NULL constraint
CREATE TABLE Employee (

    -- Employee ID
                          emp_id INT PRIMARY KEY,

    -- Employee Name cannot be empty
                          emp_name VARCHAR(50) NOT NULL,

    -- Department cannot be empty
                          department VARCHAR(30) NOT NULL,

    -- Salary
                          salary DECIMAL(10,2)
);

-- Insert records
INSERT INTO Employee
VALUES
    (101, 'Anamika', 'IT', 50000),
    (102, 'Rahul', 'HR', 45000);

-- Display all records
SELECT * FROM Employee;

-- The following query will give an error
-- because Employee Name cannot be NULL

-- INSERT INTO Employee
-- VALUES (103, NULL, 'Finance', 60000);



-- NOT NULL means a column must have a value.
-- You cannot leave it empty or insert NULL.

-- It is basically important for fields like  Name, Email, Department etc.