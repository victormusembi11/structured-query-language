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

-- Alter table to set primary key
ALTER TABLE Employee ADD PRIMARY KEY (emp_id);

-- Delete a primary key constraint
ALTER TABLE Employee DROP PRIMARY KEY;