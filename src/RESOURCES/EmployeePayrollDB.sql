***************************************************** UC1 **************************************************************
                                            //Ability to create a payroll service database

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


