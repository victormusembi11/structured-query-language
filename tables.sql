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