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
