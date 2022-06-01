public with sharing class TurkishLesson5 {
    public static void listMetot(){
        List<String> dersList = new List<String>();
        System.debug('listemiz boşken  ' + dersList.isEmpty());
        dersList.add('Turkce');
        dersList.add('Fen Bilgisi');
        dersList.add('Tarih');
        System.debug(dersList);
        System.debug(dersList.get(1));
        System.debug(dersList[1]);
        System.debug(dersList.indexOf('Fen Bilgisi'));
        System.debug('listemiz dolu iken  ' + dersList.isEmpty());
        System.debug('listemiz dolu iken  ' + !dersList.isEmpty());
        System.debug('listenin eleman sayısı  ' + dersList.size());

        List<Integer> numList = new List<Integer>{23, 7, 4, 18};
        System.debug(numList);
        numList.sort();
        System.debug('sort metodu uygulanınca  ' + numList);
    }

    public static void catMetot(){
        List<Cat> catsList = new List<Cat>();
        Cat c = new Cat();
        c.name = 'Pamuk';
        c.colorName = 'Beyaz';
        c.age = 3;
        catsList.add(c);

        Cat c2 = new Cat();
        c2.name = 'Prenses';
        c2.colorName = 'Gri';
        c2.age = 2;
        catsList.add(c2);

        Cat c3 = new Cat('Zeytin', 'Siyah', 1);
        catsList.add(c3);

        Cat c4 = new Cat('Tarçın', 'Turuncu', 3);
        catsList.add(c4);

        System.debug(catsList);
        

    }
}
