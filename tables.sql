-- Create a table
CREATE TABLE Employee (
    emp_id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email_address VARCHAR(150),
    salary INT
);

-- Show a description of the table
DESCRIBE Employee;

-- output:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | emp_id        | int          | YES  |     | NULL    |       |
-- | first_name    | varchar(100) | YES  |     | NULL    |       |
-- | last_name     | varchar(100) | YES  |     | NULL    |       |
-- | email_address | varchar(150) | YES  |     | NULL    |       |
-- | salary        | int          | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+

-- Creating a table using another table (borrowing all fields from Employee table)
CREATE TABLE Manager AS SELECT * FROM Employee;

-- table description:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | emp_id        | int          | YES  |     | NULL    |       |
-- | first_name    | varchar(100) | YES  |     | NULL    |       |
-- | last_name     | varchar(100) | YES  |     | NULL    |       |
-- | email_address | varchar(150) | YES  |     | NULL    |       |
-- | salary        | int          | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+


-- Creating a table using another table (borrowing some fields from Employee table)
CREATE TABLE Manager AS SELECT email_address, salary FROM Employee;

-- table description:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | email_address | varchar(150) | YES  |     | NULL    |       |
-- | salary        | int          | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+

-- Creating a table using another table and also copying the data based on a condition
-- In this case were copying only the employees who have a salary more than 5000
CREATE TABLE Manager AS SELECT email_address, salary FROM Employee WHERE salary > 5000;

-- table description:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | email_address | varchar(150) | YES  |     | NULL    |       |
-- | salary        | int          | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+

-- Data in table - SELECT * FROM Manager;
-- +---------------------+--------+
-- | email_address       | salary |
-- +---------------------+--------+
-- | johndoe@example.com |  10000 |
-- +---------------------+--------+

-- Droping a Table
DROP TABLE Manager;

-- Alter Table
-- used to add, change or delete columns in an existing table.

-- Add column
ALTER TABLE Employee ADD age INT;

-- Delete column
ALTER TABLE Employee DROP COLUMN age;

-- Modify column data type
ALTER TABLE Employee MODIFY COLUMN salary DECIMAL;
