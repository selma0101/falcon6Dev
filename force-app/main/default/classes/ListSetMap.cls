public with sharing class ListSetMap {
    public static void practiceOne() {
        List<string> listOfCity = new List<string>();

        listOfCity.add('Ankara');
        listOfCity.add('Istanbul');
        listOfCity.add('London');
        listOfCity.add('Paris');
        listOfCity.add('New York');
        listOfCity.add('Tokyo');
        listOfCity.add('Antalya');
        listOfCity.add('London');
        listOfCity.add('Paris');
        listOfCity.add('New York');
        listOfCity.add('Tokyo');

        System.debug(listOfCity);

        integer boyut = listOfCity.size();
        System.debug(' Listenin boyutu => ' + boyut);

        Boolean boslist = listOfCity.isEmpty();
        System.debug(' Liste bos mu? ' + boslist);

        string check = listOfCity.get(6);
        System.debug(' Listenin 7. elemani => ' + check);

        Set<string> setOfCity = new Set<string>();
        setOfCity.addAll(listOfCity);
        System.debug(' Set of Cities => ' + setOfCity);     

    }

    //PRACTICE TWO
    public static void practiceTwo( list<Integer> tekCiftSayi ){
        
        Set<integer> tekSayiSet = new Set<integer>();
        Set<integer> ciftSayiSet = new Set<integer>();

        for (integer sayilar : tekCiftSayi) {
            if (Math.mod(sayilar, 2) == 1) {
                tekSayiSet.add(sayilar);
            } else {
                ciftSayiSet.add(sayilar); 
            }
            System.debug(' Tek sayilar => ' + tekSayiSet);
            System.debug(' Cift sayilar => ' + ciftSayiSet);
        }
        
     }
} 

       








/* for (integer sayilar : tekCiftSayi) {
    if (Math.mod(sayilar, 2) == 1) {
        tekSayiSet.add(sayilar);
    } else {
        ciftSayiSet.add(sayilar); 
    }
    System.debug(' Tek sayilar => ' + tekSayiSet);
    System.debug(' Cift sayilar => ' + ciftSayiSet);
}

}
} */



