public  class Employees {
    public static void EmployeesName() {
        List<string> listOfEmployees = new List<string>();
        listOfEmployees.add('Esmanur');
        listOfEmployees.add('Eymen');
        listOfEmployees.add('Ayse');
        listOfEmployees.add('Ahmet');
        listOfEmployees.add('Nil');
        listOfEmployees.add('Zeynep');

        listOfEmployees.sort();
        System.debug('List of the Employees ==> ' + listOfEmployees);
        
    }
}
