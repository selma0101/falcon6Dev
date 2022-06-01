@isTest
public with sharing class SoqlDemo2Test {
    @isTest
    private static void soqlDemoTest1() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact c = new contact();
            c.LastName = 'Test SOQL';
            if (i < 100) {
                c.accountid = acc1.id;
            } else if (i < 200) {
                c.accountid = acc2.id;
            } else if(i < 300){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;
        Test.startTest();
        soqldemo2.childToParent_Soql1();
        Test.stopTest();
    }
}