-- Select the database
USE CompanyDB;

-- Create a table with UNIQUE constraint
CREATE TABLE Customer (

    -- Customer ID
                          customer_id INT PRIMARY KEY,

    -- Customer Name
                          customer_name VARCHAR(50),

    -- Email must be unique
                          email VARCHAR(100) UNIQUE
);

-- Insert records
INSERT INTO Customer
VALUES
    (101, 'Anamika', 'anamika@gmail.com'),
    (102, 'Rahul', 'rahul@gmail.com'),
    (103, 'Priya', 'priya@gmail.com');

-- Display all records
SELECT * FROM Customer;

-- The following query will give an error
-- because the email already exists

-- INSERT INTO Customer
-- VALUES (104, 'Amit', 'rahul@gmail.com');


-- UNIQUE ensures that all values in a column are different.
-- Duplicate values are not allowed.