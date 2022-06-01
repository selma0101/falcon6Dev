@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id,name from Account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    private static void dmlDemoUpdate2Test(){
        Account acc = new account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();

        List<contact>ListCnt = [select id, name from contact];
        system.assertEquals(1, ListCnt.size());
        system.assertEquals('Biden', ListCnt[0].Name);
    }
}
