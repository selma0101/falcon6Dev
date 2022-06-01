public class NumberRecords {
    public static void existNumbers() {
        List<Integer>listOfNum = new List<Integer>{6, 8, 4, 12, 9, 56};

        system.debug('List of the Numbers => ' + listOfNum);
       
        system.debug('Is number 8 included in the list? : ' + listOfNum.contains(8));
        
        system.debug('Is number 7 included in the list? : ' + listOfNum.contains(7));

    }
}
