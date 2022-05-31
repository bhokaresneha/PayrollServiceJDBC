package com.bridgelabz;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
    public static List<EmployeePayroll> retriveData(String sql) {
        List<EmployeePayroll> employeeDataList=new ArrayList<>();
        try{
            Connection connection=JDBCConnection.getConnection();
            Statement statement=connection.createStatement();
            ResultSet resultSet=statement.executeQuery(sql);
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name=resultSet.getString("name");
                double salary=resultSet.getDouble("salary");
                employeeDataList.add(new EmployeePayroll(id,name,salary));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return employeeDataList;
    }

}

