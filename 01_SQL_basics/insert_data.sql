-- Select the database
USE CompanyDB;

-- Insert records into the Employee table
INSERT INTO Employee (emp_id, emp_name, salary, department)
VALUES
    (101, 'Anamika', 50000.00, 'IT'),
    (102, 'Rahul', 45000.00, 'HR'),
    (103, 'Priya', 60000.00, 'Finance'),
    (104, 'Amit', 55000.00, 'Marketing'),
    (105, 'Sneha', 70000.00, 'IT');

-- Display all records from the Employee table
SELECT * FROM Employee;