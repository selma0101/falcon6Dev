public class DemoDmlClass {
    public DemoDmlClass() {
        System.debug(' Welcome to the world of SOQL. Please enter the key character to search. ');

    }

    public void dmlInsert(string keychar){
        List<Account>accName = [Select Id,Name,(Select Name from Contacts Where name Like: keychar) From Account];
        List<Contact>UpCon = new List<Contact>();
        for (Account eachAccount : accName) {
            for (Contact eachContact : eachAccount.Contacts) {
                System.debug(eachContact.Id + ' ' + eachContact.Name);
                Contact Upcontact = new Contact();
                
                
            }
            
        }
    }

}
