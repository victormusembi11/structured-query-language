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

-- Foreign Key
-- This is used to prevent actions that would destroy links between tables
-- The foreign key is a field in one table that refers to another primary key another table

CREATE TABLE Person (
    PersonID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Age INT NOT NULL
);

CREATE TABLE Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    OrderNumber INT NOT NULL,
    PersonID INT,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

-- table description
-- +-------------+------+------+-----+---------+-------+
-- | Field       | Type | Null | Key | Default | Extra |
-- +-------------+------+------+-----+---------+-------+
-- | OrderID     | int  | NO   | PRI | NULL    |       |
-- | OrderNumber | int  | NO   |     | NULL    |       |
-- | PersonID    | int  | YES  | MUL | NULL    |       |
-- +-------------+------+------+-----+---------+-------+

-- Alter table to add foreign key

CREATE TABLE Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    OrderNumber INT NOT NULL,
    PersonID INT
);

ALTER TABLE Orders ADD FOREIGN KEY (PersonID) REFERENCES Person(PersonID);

-- Alter table to add foreign key name foreign key constraint

ALTER TABLE Orders ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Person(PersonID);

-- Delete a foreign key

ALTER TABLE Orders DROP FOREIGN KEY FK_PersonOrder;

-- Default Constraint
-- Used to set a default value for a column

CREATE TABLE Profile (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150) NOT NULL,
    account_type VARCHAR(50) DEFAULT 'private',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- table description:
-- +--------------+--------------+------+-----+-------------------+-------------------+
-- | Field        | Type         | Null | Key | Default           | Extra             |
-- +--------------+--------------+------+-----+-------------------+-------------------+
-- | Id           | int          | NO   | PRI | NULL              | auto_increment    |
-- | email        | varchar(150) | NO   |     | NULL              |                   |
-- | account_type | varchar(50)  | YES  |     | private           |                   |
-- | created_at   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +--------------+--------------+------+-----+-------------------+-------------------+

-- Alter table to set default constraint

ALTER TABLE Profile ALTER account_type SET DEFAULT 'public';

-- table description:
-- +--------------+--------------+------+-----+-------------------+-------------------+
-- | Field        | Type         | Null | Key | Default           | Extra             |
-- +--------------+--------------+------+-----+-------------------+-------------------+
-- | Id           | int          | NO   | PRI | NULL              | auto_increment    |
-- | email        | varchar(150) | NO   |     | NULL              |                   |
-- | account_type | varchar(50)  | YES  |     | public            |                   |
-- | created_at   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +--------------+--------------+------+-----+-------------------+-------------------+

-- ALter table to delete default constraint

ALTER TABLE Profile ALTER account_type DROP DEFAULT;

-- table description:
-- +--------------+--------------+------+-----+-------------------+-------------------+
-- | Field        | Type         | Null | Key | Default           | Extra             |
-- +--------------+--------------+------+-----+-------------------+-------------------+
-- | Id           | int          | NO   | PRI | NULL              | auto_increment    |
-- | email        | varchar(150) | NO   |     | NULL              |                   |
-- | account_type | varchar(50)  | YES  |     | NULL              |                   |
-- | created_at   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +--------------+--------------+------+-----+-------------------+-------------------+

-- Auto Increment Constraint
-- For it to be auto increment, it has to be a primary key

CREATE TABLE Employee (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150)
);

-- table description:
-- +-------+--------------+------+-----+---------+----------------+
-- | Field | Type         | Null | Key | Default | Extra          |
-- +-------+--------------+------+-----+---------+----------------+
-- | ID    | int          | NO   | PRI | NULL    | auto_increment |
-- | email | varchar(150) | YES  |     | NULL    |                |
-- +-------+--------------+------+-----+---------+----------------+

-- Alter table to set starting point for auto increment

ALTER TABLE Employee AUTO_INCREMENT=100;

INSERT INTO Employee (email) VALUES ("johndoe@example.com");

-- table data:
-- +-----+---------------------+
-- | ID  | email               |
-- +-----+---------------------+
-- | 100 | johndoe@example.com |
-- +-----+---------------------+
