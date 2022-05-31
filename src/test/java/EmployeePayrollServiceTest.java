import com.bridgelabz.EmployeePayrollDBServices;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class EmployeePayrollServiceTest {

    EmployeePayrollDBServices employeePayrollDBServices= new EmployeePayrollDBServices();

    @Test
    public void createTableInDB(){
        String sql="create table employee_payroll(id INT unsigned NOT NULL AUTO_INCREMENT,name VARCHAR(150) NOT NULL," +
                     "salary Double NOT NULL,start DATE NOT NULL, PRIMARY KEY (id))";
        Assertions.assertTrue(employeePayrollDBServices.createTable(sql));
    }
}
