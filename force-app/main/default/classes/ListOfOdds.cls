public class ListOfOdds {
    public ListOfOdds() {
        system.debug(' Welcome to see Odd Numbers! ');

    }
    public void ListOfOddNumbers (integer n){
        List<integer> listOfOdd = new List<integer>();
        for (Integer i = 1; i <= n; i++) {
            if(math.mod(i, 2) == 1){
                listOfOdd.add(i);
            }
            
        }
        system.debug('List of the Odd Numbers ==> ' + listOfOdd);
    }

}
