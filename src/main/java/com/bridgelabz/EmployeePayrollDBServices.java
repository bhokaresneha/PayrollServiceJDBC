package com.bridgelabz;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class EmployeePayrollDBServices {

    public boolean createTable()
    {
        try (Connection connection = JDBCConnection.getConnection();
             Statement statement = connection.createStatement();) {
            String table = "CREATE TABLE REGISTRATION (id int)";
            statement.executeUpdate(table);
            System.out.println("Created table in given database...");
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

