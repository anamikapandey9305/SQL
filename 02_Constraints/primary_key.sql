-- Select the database
USE CompanyDB;

-- Create a table with a Primary Key
CREATE TABLE Student (

    -- Student ID is unique and cannot be NULL
                         student_id INT PRIMARY KEY,

    -- Student Name
                         student_name VARCHAR(50),

    -- Student Age
                         age INT
);

-- Display the table structure
DESCRIBE Student;

-- Insert records into the Student table
INSERT INTO Student
VALUES
    (101, 'Anamika', 21),
    (102, 'Rahul', 22),
    (103, 'Priya', 20);

-- Display all records
SELECT * FROM Student;

-- The following query will give an error
-- because Primary Key values must be unique

-- INSERT INTO Student
-- VALUES (101, 'Amit', 23);


-- Primary Key uniquely identifies each row.
-- It cannot contain duplicate values.
-- It cannot be NULL.
-- Every table should have one Primary Key.