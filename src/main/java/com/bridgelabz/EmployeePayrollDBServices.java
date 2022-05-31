package com.bridgelabz;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class EmployeePayrollDBServices implements EmployeePayrollServiceInterface{

   //createTable() method to Create table in payroll_service Database
    public boolean createTable(String sql)
    {
        try (Connection connection = JDBCConnection.getConnection();
             Statement statement = connection.createStatement();) {
                       statement.executeUpdate(sql);
            System.out.println("Created table in given database...");
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean insertRecord(String sql) {
        try (Connection connection = JDBCConnection.getConnection();
             Statement statement = connection.createStatement();) {
            statement.executeUpdate(sql);
            System.out.println("Record Added Successfully in given Table...");
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


}

