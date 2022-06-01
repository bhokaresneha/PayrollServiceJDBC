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
    public  List<EmployeePayroll> retriveData(String sql) {
        List<EmployeePayroll> employeeDataList=new ArrayList<>();
        try{
            Connection connection=JDBCConnection.getConnection();
            Statement statement=connection.createStatement();
            ResultSet resultSet=statement.executeQuery(sql);
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name=resultSet.getString("name");
                String gender=resultSet.getString("gender");
                double salary=resultSet.getDouble("salary");
                String start=resultSet.getString("start");

                employeeDataList.add(new EmployeePayroll(id,name,gender,salary,start));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return employeeDataList;
    }

    public boolean retriveSalary(String sql)
    {
        try {
            Connection connection = JDBCConnection.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                System.out.println(resultSet.getDouble("salary"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    public boolean updateRecord(String sql){
        try (Connection connection = JDBCConnection.getConnection();
             Statement statement = connection.createStatement();)
        {
             statement.executeUpdate(sql);
             System.out.println("Record Updated Successfully in given Table...");

        } catch (SQLException e) {
           // throw new RuntimeException(e);
            System.out.println("Record not updated ");
        }
        System.out.println("Data After Update Records=> ");
        String abc="SELECT * FROM employee_payroll";
        List<EmployeePayroll> employeeData=retriveData(abc);
        for(EmployeePayroll data:employeeData)
        {
            System.out.println(data);
        }

        return false;

    }
}

