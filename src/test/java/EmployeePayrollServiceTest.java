import com.bridgelabz.EmployeePayrollDBServices;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class EmployeePayrollServiceTest {

    EmployeePayrollDBServices employeePayrollDBServices= new EmployeePayrollDBServices();

    @Test
    public void createTableInDB(){
        Assertions.assertTrue(employeePayrollDBServices.createTable());
    }
}
