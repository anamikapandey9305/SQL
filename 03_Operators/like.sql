-- Select the database
USE CompanyDB;

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

-- Names starting with 'A'
SELECT * FROM Employee
WHERE emp_name LIKE 'A%';

-- Names ending with 'a'
SELECT * FROM Employee
WHERE emp_name LIKE '%a';

-- Names containing 'i'
SELECT * FROM Employee
WHERE emp_name LIKE '%i%';

-- Names with exactly 5 characters
SELECT * FROM Employee
WHERE emp_name LIKE '_____';

-- Names starting with 'P' and ending with 'a'
SELECT * FROM Employee
WHERE emp_name LIKE 'P%a';