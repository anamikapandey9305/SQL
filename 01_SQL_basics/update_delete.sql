-- Select the database
USE CompanyDB;

-- Display all records before updating
SELECT * FROM Employee;

-- Update the salary of employee with ID 101
UPDATE Employee
SET salary = 55000
WHERE emp_id = 101;

-- Display the updated record
SELECT * FROM Employee
WHERE emp_id = 101;

-- Update the department of employee with ID 102
UPDATE Employee
SET department = 'Sales'
WHERE emp_id = 102;

-- Display all records after updating
SELECT * FROM Employee;

-- Delete the employee with ID 105
DELETE FROM Employee
WHERE emp_id = 105;

-- Display all records after deleting
SELECT * FROM Employee;

-- UPDATE → Modify existing records.
-- SET → Specify the new value.
-- WHERE → Update/Delete only the required record.
-- DELETE → Remove records from a table.