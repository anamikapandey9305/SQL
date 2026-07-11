-- Select the database
USE CompanyDB;

-- Create a table with CHECK constraint
CREATE TABLE Employee (

    -- Employee ID
                          emp_id INT PRIMARY KEY,

    -- Employee Name
                          emp_name VARCHAR(50) NOT NULL,

    -- Employee Age must be 18 or above
                          age INT CHECK (age >= 18),

    -- Salary cannot be negative
                          salary DECIMAL(10,2) CHECK (salary >= 0)
);

-- Insert valid records
INSERT INTO Employee
VALUES
    (101, 'Anamika', 21, 50000),
    (102, 'Rahul', 25, 45000);

-- Display all records
SELECT * FROM Employee;

-- The following query will give an error
-- because age is less than 18

-- INSERT INTO Employee
-- VALUES (103, 'Priya', 16, 40000);

-- The following query will give an error
-- because salary cannot be negative

-- INSERT INTO Employee
-- VALUES (104, 'Amit', 22, -5000);

-- CHECK is used to restrict the values that can be stored in a column.
-- It ensures that the data follows a specific condition.