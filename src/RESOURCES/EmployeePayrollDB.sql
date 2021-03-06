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

    create table employee_payroll (
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

*************************************************** UC3 ****************************************************************

    //UC - Ability to create employee payroll data in the payroll service database as part of CRUD Operation
        - Use payroll_service database in MySQL Client
        - Use INSERT INTO employee_payroll
        Query to create employees payroll data into the employee_payroll table

//Query to insert record in the table.
=>
    INSERT INTO employee_payroll ( name, salary, start ) VALUES
    ( 'Bill', 1000000.00, '2010-10-30' ),
    ( 'Tersia', 2000000.00, '2019-11-13' ),
    ( 'charlie', 3000000.00, '2020-05-21' );

                                // Output from MySQL Client for Insert query.
// Query to display records which are added using Insert Query
mysql> select * from employee_payroll;
+----+---------+---------+------------+
| id | name    | salary  | start      |
+----+---------+---------+------------+
|  1 | Bill    | 1000000 | 2010-10-30 |
|  2 | Tersia  | 2000000 | 2019-11-13 |
|  3 | charlie | 3000000 | 2020-05-21 |
+----+---------+---------+------------+
3 rows in set (0.01 sec)

*************************************************** UC4 ****************************************************************
        // UC -Ability to retrieve all the employee payroll data that is added to payroll service database
        - Use payroll_service database in MySQL Client
        - Use SELECT * FROM employee_payroll to retrieve all the data from the employee_payroll table

//Query to retrieve all records from the table.
=> SELECT * FROM employee_payroll

*************************************************** UC5 ****************************************************************

        // UC -Ability to retrieve salary data for a particular employee as well as all employees who have joined
                in a particular data range from the payroll service database.
               - Use SELECT salary FROM employee_payroll WHERE name = 'Bill??? Query to View Bill???s salary
               - Use Select query with Where condition View employees between start dates
               - Query: WHERE start BETWEEN CAST('2018-01-01'AS DATE) AND DATE(NOW());
               - Note: Where Condition Clause is used to retrieve the row needed from the table
               - Note: Use of Database Functions like CAST() and NOW() in the Query

 // Query to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range
=>  SELECT salary FROM employee_payroll WHERE name = 'Bill' or start BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());

*************************************************** UC6 ****************************************************************
//UC - Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender
          - Use payroll_service database in MySQL Client
          - Use Alter Table Command to add Field gender after the name field
          - Use Update Query to set the gender using where condition with the employee name
          - E.g. UPDATE employee_payroll set gender ='M' where name = 'Bill' or name ='Charlie';

//- MySQL Client- for Alter table .

//Query to Alter Table Command to add Field gender after the name field
mysql> ALTER TABLE employee_payroll ADD gender CHAR(1) NOT NULL AFTER name;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

// Query to Display Description of Table - Gender colum is added after name column
mysql> desc employee_payroll;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int unsigned | NO   | PRI | NULL    | auto_increment |
| name   | varchar(150) | NO   |     | NULL    |                |
| gender | char(1)      | NO   |     | NULL    |                |
| salary | double       | NO   |     | NULL    |                |
| start  | date         | NO   |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

//Query to Update records for Particular Employee
UPDATE employee_payroll set gender = 'M' where name = 'Bill' or name = 'Charlie'"

************************************************************************************************************************
