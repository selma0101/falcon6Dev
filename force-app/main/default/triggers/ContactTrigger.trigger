trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}
























/* trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete) {

    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUndelete){
             for(contact c : trigger.new){
                 if(c.AccountId != null){
                     accountIds.add(c.AccountId);
                 }
             }
        }
 
        if(trigger.isUpdate){
            for(contact c : trigger.new){
                if(c.AccountId != trigger.oldMap.get(c.Id).AccountId){
                    accountIds.add(c.AccountId);
                    accountIds.add(trigger.oldMap.get(c.Id).AccountId);
                }
            }
 
        }
 
        if(trigger.isDelete){
          for(contact c : trigger.old){
              if(c.AccountId != null){
                 accountIds.add(c.AccountId);
              }
          }
        }
 
        if(!accountIds.isEmpty()){
            List<Account> accList = [select id, name, Number_of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
 
            if(!accList.isEmpty()){
                list<Account> updateAccountList = new list<Account>();
                for(Account eachAcc : accList){
                    List<Contact> contactsList = eachAcc.contacts;
 
                    Account acc = new Account();
                    acc.id = eachAcc.id;
                    acc.Number_of_Contacts__c = contactsList.size();
                    updateAccountList.add(acc);
                }
                if(!updateAccountList.isEmpty()){
                    update updateAccountList;
                }
            }
        }
    }
 
 }   
  */
 
 
 
 //trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {



  /*   if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
 */



    /* /* From the Contact Trigger print the following message whenever the lastName of an Contact is changed.
    Message : Last Name  is changed - [OldLastName] is changed to [NewLastName].
    For example: If a contact with lastName as 'Smith' changed to 'Andrew' then the below message should print:
    Last Name is changed - Smith is changed to Andrew. */

    /* if(trigger.isBefore && trigger.isUpdate){
        for (Contact cn : trigger.new) {
            if(cn.LastName != trigger.oldMap.get(cn.id).LastName){
                System.debug('Last Name  is changed - ' + trigger.oldMap.get(cn.id).LastName + ' is changed to ' + cn.LastName );
            }
            
        }
    }
 */
 



   /*   //27. Bir Contact insert edildiğinde First Name yazılmamışsa 'Bu record'da First Name yazılmadı.. Name sadece Last Name = [lastName] den oluşuyor.' mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız.

     if(trigger.isBefore && trigger.isInsert){
         for (Contact cn : trigger.new) {
             if(cn.FirstName == null){
                 system.debug('Bu recordda First Name yazilmadi. Name sadece Last Name = ' + cn.LastName + ' den olusuyor');
             }
             
         }
     } */







  /*     if(trigger.isBefore && trigger.isInsert){
         System.debug('=========BEFORE INSERT=======');
         System.debug('trigger.new before insert = ' + trigger.new);
         System.debug('trigger.old before insert = ' + trigger.old);
         System.debug('trigger.newMap before insert = ' + trigger.newMap);
         System.debug('trigger.oldMap before insert = ' + trigger.oldMap);
     }
     if(trigger.isAfter && trigger.isInsert){
         System.debug('=========AFTER INSERT=======');
         System.debug('trigger.new after insert = ' + trigger.new);
         System.debug('trigger.old after insert = ' + trigger.old);
         System.debug('trigger.newMap after insert = ' + trigger.newMap);
         System.debug('trigger.oldMap after insert = ' + trigger.oldMap);
     }
     if(trigger.isBefore && trigger.isUpdate){
        System.debug('=========BEFORE UPDATE=======');
        System.debug('trigger.new before update = ' + trigger.new);
        System.debug('trigger.old before update = ' + trigger.old);
        System.debug('trigger.newMap before update = ' + trigger.newMap);
        System.debug('trigger.oldMap before update = ' + trigger.oldMap);
     }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('=========AFTER UPDATE=======');
        System.debug('trigger.new after update = ' + trigger.new);
        System.debug('trigger.old after update = ' + trigger.old);
        System.debug('trigger.newMap after update = ' + trigger.newMap);
        System.debug('trigger.oldMap after update = ' + trigger.oldMap);
    }
 */
    
 

