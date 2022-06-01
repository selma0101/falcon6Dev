public class SetDemo {
    public static void citySet() {
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lizbon');
        cities.add('Berlin');
        cities.add('Ankara');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Ankara');

        System.debug('set of cities are : ' + cities);
    }

    public static void randomInteger(){
        set<integer> setInteger = new set<Integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(10);
        setInteger.add(15);
        system.debug('set of random integers ' + setInteger);


    }

    public static set<integer> setFromList(list<integer>intList){
        Set<integer>intSet = new Set<integer>();
        intSet.addAll(intList);
        return intSet;
    }
}