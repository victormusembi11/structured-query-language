-- Required fields (NOT NULL)
CREATE TABLE Employee (
    emp_id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email_address VARCHAR(150) NOT NULL,
    salary INT
);

-- table description (default is null):
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | emp_id        | int          | NO   |     | NULL    |       |
-- | first_name    | varchar(100) | NO   |     | NULL    |       |
-- | last_name     | varchar(100) | NO   |     | NULL    |       |
-- | email_address | varchar(150) | NO   |     | NULL    |       |
-- | salary        | int          | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+

-- Alter table for not null
ALTER TABLE Employee MODIFY COLUMN salary INT NOT NULL;

-- Unique Constraints
CREATE TABLE Manager (
    manager_id INT NOT NULL UNIQUE,
    email_address VARCHAR(255) NOT NULL UNIQUE
);

-- table description:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | manager_id    | int          | NO   | PRI | NULL    |       |
-- | email_address | varchar(255) | NO   | UNI | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+

-- Unique Constraint on multiple columns
CREATE TABLE Manager (
    manager_id INT NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    CONSTRAINT UC_Manager UNIQUE (manager_id, email_address)
);

-- table description:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | manager_id    | int          | NO   | PRI | NULL    |       |
-- | email_address | varchar(255) | NO   | PRI | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+

-- Alter table to set constraint
ALTER TABLE Employee ADD UNIQUE (emp_id, email_address);

-- Drop a unique constraint
ALTER TABLE Manager DROP INDEX UC_Manager;

-- Previous schema (note UC_Manager):
-- CREATE TABLE Manager (
--     manager_id INT NOT NULL,
--     email_address VARCHAR(255) NOT NULL,
--     CONSTRAINT UC_Manager UNIQUE (manager_id, email_address)
-- );


-- Primary Key
-- The primary key constraint uniquely each record in a table
-- A table can only have one primary key

-- Method 1
CREATE TABLE Manager (
    manager_id INT NOT NULL PRIMARY KEY,
    email_address VARCHAR(255) NOT NULL
);

-- Method 2
CREATE TABLE Manager (
    manager_id INT NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    PRIMARY KEY (manager_id)
);

-- table description:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | manager_id    | int          | NO   | PRI | NULL    |       |
-- | email_address | varchar(255) | NO   |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
