-- Create a database
CREATE DATABASE sample_db;

-- Create a database but check that it doesn't exist first
CREATE DATABASE IF NOT EXISTS sample_db;

-- List all databases (not an SQL command, only for mysql server)
SHOW DATABASES;

-- output:
-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | sample_db          |
-- | sys                |
-- +--------------------+

-- Delete a database
DROP DATABASE sample_db;
