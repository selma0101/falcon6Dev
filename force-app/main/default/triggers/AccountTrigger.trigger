 trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.Old, trigger.NewMap, trigger.OldMap);
        system.debug('before insert/update trigger end');
    }

    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}

  /*   if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        map<id, account> newAccountMap = trigger.newmap;
        map<id, account> oldAccountMap = trigger.oldmap;
        for(account eachAcc: trigger.new){
            boolean updateDesc = false;
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(trigger.isUpdate){
                Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }
 */






    /* if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('---------isInsert && isBefore START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isInsert && isBefore END------------');
        System.debug('                                    ');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        System.debug('                                    ');
        system.debug('---------isInsert && isAfter START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isInsert && isAfter END------------');
        System.debug('                                    ');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        System.debug('                                    ');
        system.debug('---------isUpdate && isBefore START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isUpdate && isBefore END------------');
        System.debug('                                    ');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        System.debug('                                    ');
        system.debug('---------isUpdate && isAfter START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isUpdate && isAfter END------------');
        System.debug('                                    ');
    }
 */



/*      if(trigger.isBefore){
         system.debug('Before insert/update trigger on Account object');
         for (Account eachAcc : Trigger.new) {
             if(trigger.isInsert && eachAcc.Active__c=='YES')
             eachAcc.Description = 'Account is now Active Enjoy ';
             
         }
     } */


/*     if (trigger.isAfter && trigger.isUpdate) {

        Map<id, Account> newAccMap = trigger.newMap;
        Map<id, Account> oldAccMap = trigger.oldMap;

        Set<id> setOfAccIds = newAccMap.keySet();
        integer countWebsiteUpdated = 0;
        for (ID eachId : setOfAccIds) {
            
            Account oldAcc = oldAccMap.get(eachId);
            string oldWebsite = oldAcc.Website;

            Account newAcc = newAccMap.get(eachId);
            string newWebsite = newAcc.Website;

            if (oldWebsite != newWebsite) {
                System.debug('For Account ' + newAcc.Name + 'New Website is ' + newAcc.Website);
                countWebsiteUpdated++;
            }
        }
        System.debug('# of account website updated = ' + countWebsiteUpdated);
    }
 */




/*     if (trigger.isAfter && trigger.isUpdate) {

        Map<id, Account> newAccMap = trigger.newMap;
        Map<id, Account> oldAccMap = trigger.oldMap;

        Set<id> setOfAccIds = newAccMap.keySet();

        for (ID eachId : setOfAccIds) {
            System.debug('================');
            System.debug('each Id = ' + eachId);

            Account newAccount = newAccMap.get(eachId);
            System.debug('New Account name = ' + newAccount.name);

            Account oldAccount = oldAccMap.get(eachId);
            System.debug('Old Account name = ' + oldAccount.name);
        }
    } */










    /* map<id, account> trgNewMap = trigger.newMap;
    map<id, account> trgOldMap = trigger.oldMap;

    if(trigger.isBefore &&  trigger.isInsert){
        system.debug('=======BEFORE INSERT=========');
        system.debug('Before insert OLD MAP = ' + trgOldMap);
        system.debug('Before insert NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isInsert){
        system.debug('=======AFTER INSERT=========');
        system.debug('AFter insert OLD MAP = ' + trgOldMap);
        system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    }

    if(trigger.isBefore &&  trigger.isUpdate){
        system.debug('=======BEFORE UPDATE=========');
        system.debug('Before update OLD MAP = ' + trgOldMap);
        system.debug('Before update NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isUpdate){
        system.debug('=======AFTER UPDATE=========');
        system.debug('AFter update OLD MAP = ' + trgOldMap);
        system.debug('AFter update NEW MAP = ' + trgNEWMap);
    }
 */





  /*   if(trigger.isAfter){
        if(trigger.isUpdate){
            List<account> oldAccounts = trigger.old;
            List<account> newAccounts = trigger.new;

            for(account oldAcc: oldaccounts){
                system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
            }
            for(account newAcc: newaccounts){
                system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
            }
        }
    } */













   /*  if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }
 */









   /*  if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    } */


















    /* if(trigger.isAfter){
        system.debug('trigger.new after insert/update = ' + trigger.new);
    }
 */



 /*    system.debug('-----------SATRT-------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);

    if (Trigger.isInsert && Trigger.isBefore){
        system.debug('before insert trigger fired');
 
    } */
       


  /*   if(trigger.isInsert)
    system.debug('before insert trigger called');

    if(trigger.isUpdate)
    system.debug('before update trigger called');
   */
  
  
  
  
  
  
    /* system.debug('before insert account trigger fired');
    system.debug('before update trigger called');
 */




















    //system.debug('before insert account trigger fired');





















    /*
    //when will .isBefore TRUE?
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);

    //when will .isAfter TRUE??
    if(Trigger.isAfter){
        system.debug('after insert trigger called');
    }

    if(Trigger.isBefore){
        system.debug('before insert account trigger fired');
    }    
    system.debug('--------------------------');
    */



