import com.bridgelabz.EmployeePayroll;
import com.bridgelabz.EmployeePayrollDBServices;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;

public class EmployeePayrollServiceTest
{
    EmployeePayrollDBServices employeePayrollDBServices= new EmployeePayrollDBServices();

    @Test
    public void createTableInDB()
    {
        String sql="create table employee_payroll(id INT unsigned NOT NULL AUTO_INCREMENT,name VARCHAR(150) NOT NULL," +
                     "salary Double NOT NULL,start DATE NOT NULL, PRIMARY KEY (id))";
        Assertions.assertTrue(employeePayrollDBServices.createTable(sql));
    }

    @Test
    public void insertIntoTable()
    {
        String sql="INSERT INTO employee_payroll ( name, salary, start ) VALUE( 'Bill', 1000000.00, '2010-10-30' )," +
                "( 'Tersia', 2000000.00, '2019-11-13' ),( 'charlie', 3000000.00, '2020-05-21' )";
        Assertions.assertTrue(employeePayrollDBServices.insertRecord(sql));
    }
    @Test
    public void retriveDataFromTable()
    {
       String sql="SELECT * FROM employee_payroll";
        List<EmployeePayroll> employeeData=employeePayrollDBServices.retriveData(sql);
            for(EmployeePayroll data:employeeData)
            {
                System.out.println(data);
            }
            Assertions.assertEquals(3,employeeData.size());
    }
}


