package com.bridgelabz;

import java.util.List;

public interface EmployeePayrollServiceInterface {
    boolean createTable(String sql);
    boolean insertRecord(String sql);
    List<EmployeePayroll> retriveData(String sql);
    boolean retriveSalary(String sql);
}
