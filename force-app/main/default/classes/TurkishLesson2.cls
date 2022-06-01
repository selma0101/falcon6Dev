public class TurkishLesson2 {
    // 1. save 2. deploye 3. apexte obje üretme 4. obje metotu çağırma
    public void variableDefine(){
        String name1 = 'John';
        integer number1 = 11;
        Boolean isCheck = true;
        // System.debug('name : ' + name1);
        // System.debug('number : ' + number1);
        // System.debug('isCheck : ' + isCheck);
        System.debug('name : ' + name1 + '  number : ' + number1 + '  isCheck : ' + isCheck);
    }

    public String text = 'Ben Salesforce öğreniyorum..';
    private integer counter = 0;

    public void privateMethod(){
        System.debug('private counter : ' + counter);
        System.debug('text : ' + text);
    }

    public void welcome(string nm){
        counter++;
        // counter = counter + 1;
        System.debug(nm +  ' '+ counter + '. öğrenci olarak hosgeldin..');
    }

    public void stringMetot(string str){
        //System.debug(str);
        //System.debug(str);
        integer abc = str.length();
        system.debug('Uzunluk ' + abc);
        //return str.length();
    }

    public Decimal price(string kName, Decimal kFiyat, integer adet){
            Decimal total = kFiyat*adet;
            System.debug(kName + ' kitabından '+ adet + ' adet aldınız. ödeyeceğiniz ücret = ' + total);
            return total;
    }
}
