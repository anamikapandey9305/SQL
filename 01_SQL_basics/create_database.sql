--
-- File: create_database.sql
-- Description: Creating and selecting a database in MySQL
-- Author: Anamika Pandey
--

-- Create a new database named CompanyDB
CREATE DATABASE CompanyDB;

-- Display all databases available in MySQL
SHOW DATABASES;

-- Select CompanyDB so that all future operations
-- (like creating tables and inserting data)
-- are performed inside this database.
USE CompanyDB;

-- Verify the currently selected database
SELECT DATABASE();