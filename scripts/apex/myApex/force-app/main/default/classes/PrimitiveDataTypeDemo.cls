public class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
        String batchName = 'Falcon6';
        Integer totalCandidate = 120;
        Boolean isAdminCompleted = True;
        System.debug('Batch name is '+ batchName);
        System.debug('total # of candidates: ' + totalCandidate );
        System.debug('admin completed ? ' + isAdminCompleted );

        Decimal decValue = 27.01;
        system.debug('Decimal: ' + decValue);
         //long value has L in suffix
        Long longvalue = 215646548l;
        system.debug('long: ' + longvalue);
        
        Object obj = 'this is a string';
        object obj2 = 10;
 
        system.debug('object 1 : ' + obj);
        system.debug('object 2 : ' + obj2);
 
        Id id1 = '0015j00000ccro0AAA';
        system.debug('id ' + id1);
    } 
 }
