trigger StudentTrigger on Student__c (before insert, before update, after insert, after update) {
    if(trigger.isAfter){
        if(trigger.isUpdate){
            for (Student__c oldStudent : trigger.old) {
                System.debug('Old Student id = ' + oldStudent.id + 'Old Student Name = ' + oldStudent.name); 
            }
            for (Student__c newStudent : trigger.new) {
                System.debug('New Student id = ' + newStudent.id + 'New Student Name = ' +newStudent.name);
            }

/* 
     if(trigger.isAfter){
        if(trigger.isInsert){
            System.debug('Trigger.new after insert = ' + trigger.new);

            List<Student__c>newStudents =trigger.new;

            List<Student__c>oldStudents =trigger.old;

            System.debug('New Students = ' + newStudents);
            System.debug('Old Students = ' + oldStudents);  */

        }

    }
   
    

} 