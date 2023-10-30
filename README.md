# Learning SQL

## What is SQL?

SQL stands for Structured Query Language. It is a language used to communicate with databases. It is the standard language for relational database management systems (RDBMS).

## Installation

### Linux

```bash
sudo apt-get install mysql-server
```

### Mac

```bash
brew install mysql
```

## Logging into MySQL

By default the username is root and there's no password so when you are prompted for the password just press enter.

```bash
sudo mysql -u root -p
```

## Sourcing a file

while in the mysql shell, run the following command to source a file:

```bash
source /path/to/file.sql
```
