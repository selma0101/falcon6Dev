public class TurkishLesson1 {
    /* 1. Class create apex class ile açılır. new file değil..
       2. Classı düzenle
       3. metodu yazma 
       4. metodun içine kodları yazma
       5. save işlemi
       6. deploy işlemi(deploy kodlarımı orga gönderiyor. developer konsolda classın görünmesini sağlıyor.) ama çalışma olmuyor.
       7. apex dosyamızda class ve metodu çağıracağız.
       7.1. metotumuz static değilse classtan obje türeteceğiz. ve obje ile metodu çağıracağız..
       8. execute işlemi */
   public void genelIslemler(){
        System.debug('Derse hosgeldiniz..');
        string str = 'Salesforce ogreniyorum..';
        System.debug(str);
​
        integer Nmbr = 10;
        System.debug(Nmbr);
        Nmbr = 15;
        System.debug(Nmbr);
​
        integer a = 45;
        Integer b = 5;
        Integer c = a + b;
        Integer d = a/b;
​
        system.debug('a sayısı => ' + a + ' b sayısı => ' + b);
        system.debug('c sayısı => ' + c + ' d sayısı => ' + d);
   }
}