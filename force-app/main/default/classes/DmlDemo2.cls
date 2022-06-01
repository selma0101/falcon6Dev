public class DmlDemo2 {
    public static void dmlMultiplerecordUpdate_right() {
        List<Account> listAcc = [select id, name, description from Account order by createdDate limit 150];

        List<Account> updateAccounts = new List<Account>();

        for (Account acc : listAcc) {
            acc.Name += ' vB';
            acc.Description += 'Update via bulk DML';
            updateAccounts.add(acc);
        }
        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
        }
    }
}
