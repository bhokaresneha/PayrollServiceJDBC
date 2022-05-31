***************************************************** UC1 **************************************************************
              // UC - Ability to create a payroll service database
           - Using MySQL Client use create database query to create a payroll_service database.
           - Also you can see the DB created by using show database query
           - And go to the database created by using use payroll_service query

// Query to display already existing Database in mysql
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Address_Book_DB    |
| DEmo               |
| demo               |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

8 rows in set (0.01 sec)

//Query to Create new Database Employee_Payroll_DB.
mysql> create database payroll_service;
Query OK, 1 row affected (0.01 sec)

// Query to display databases after adding Employee_Payroll_DB database in mysql.
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Address_Book_DB    |
| DEmo               |
| demo               |
| information_schema |
| mysql              |
| payroll_service    |
| performance_schema |
| sys                |
+--------------------+

9 rows in set (0.01 sec)

*************************************************** UC2 ****************************************************************
    //UC2 - Ability to create a employee payroll table in the payroll service database to manage employee payrolls.
        - Use payroll_service database in MySQL Client
        - Use Create Table employee_payroll Query to create employee payroll table with columns id,
            name, salary and start date as column. Note Id is set to auto increment.
        - Understand the SQL data types to be used for the table
        - Note: SQL Queries as case insensitive


//Query to create employee payroll table with columns id, name, salary and start date as column.
   - Note Id is set to auto increment.

mysql> create table employee_payroll (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    salary Double NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id));

                // Output from MySQL Client for Create table query.

// before executing create table query
mysql> show tables;
Empty set (0.00 sec)

// After executing create table query

mysql> show tables;
+---------------------------+
| Tables_in_payroll_service |
+---------------------------+
| employee_payroll          |
+---------------------------+
1 row in set (0.01 sec)

// Query to display description of table
mysql> desc employee_payroll;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int unsigned | NO   | PRI | NULL    | auto_increment |
| name   | varchar(150) | NO   |     | NULL    |                |
| salary | double       | NO   |     | NULL    |                |
| start  | date         | NO   |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql>

