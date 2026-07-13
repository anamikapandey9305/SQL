-- Select the database
USE CompanyDB;
     -- LIMIT is used to display a specific number of rows.


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
    (102, 'Rahul', 'HR', 45000),
    (103, 'Priya', 'Finance', 60000),
    (104, 'Amit', 'IT', 55000),
    (105, 'Sneha', 'HR', 40000);

-- Display all records
SELECT * FROM Employee;

-- Display only the first 3 records
SELECT * FROM Employee
                  LIMIT 3;

-- Display the first 2 employees with the highest salary
SELECT * FROM Employee
ORDER BY salary DESC
    LIMIT 2;