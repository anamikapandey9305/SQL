-- Select the database
USE CompanyDB;

-- Display all columns and all records
SELECT * FROM Employee;

-- Display only employee names
SELECT emp_name FROM Employee;

-- Display employee name and salary
SELECT emp_name, salary FROM Employee;

-- Display all employees from the IT department
SELECT * FROM Employee
WHERE department = 'IT';

-- Display employees whose salary is greater than 50000
SELECT * FROM Employee
WHERE salary > 50000;

-- Display employees whose salary is less than or equal to 55000
SELECT * FROM Employee
WHERE salary <= 55000;

-- Display employees in ascending order of salary
SELECT * FROM Employee
ORDER BY salary ASC;

-- Display employees in descending order of salary
SELECT * FROM Employee
ORDER BY salary DESC;

-- Display only the first 3 records
SELECT * FROM Employee
                  LIMIT 3;