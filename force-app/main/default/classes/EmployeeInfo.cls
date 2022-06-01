public class EmployeeInfo {
    public static string showInfo(integer empNumber) {
       string nameOfEmployee = '';
        Map<integer, string> employeeMap = new Map<integer, string>();
        employeeMap.put(1, 'Matias Lizarraga');
        employeeMap.put(2, 'Aaron Gonzalez');

       nameOfEmployee = employeeMap.get(empNumber);
       system.debug('Name of the Employee => ' + nameOfEmployee);
       return nameOfEmployee;
      

    }
}
