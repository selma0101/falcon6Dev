public with sharing class SOQL_Class {
    //24.Soru=24 - Belirtilen SOQL sorgularını "SOQL_Class" ında belirtilen metodun içinde yapınız
    public static void account_SOQL() {
        //1 - "account_SOQL" methodu ile: Account objesinde, telefon numaraları boş olmayanları listeleyiniz ve debug ile yazdırınız.
        List<Account>listAccPhone = [Select Phone FROM Account WHERE Phone != null];
        System.debug('Telefon numaralari bos olmayanlarin listesi = ' + listAccPhone);
        //2 - "account_SOQL" methodu ile: Account objesinde, id, name'i çağıralım ve name field inin sonunda'a' geçenleri varsa debug ile yazdıralım.
        List<Account>listAccSonA = [Select Id,Name FROM Account WHERE name like '%A'];
        System.debug('Isminin sonunda a gecenlerin listesi = ' + listAccSonA);
    }   
    public static void account_SOQL_2(string X){
         //3 - "account_SOQL_2" methodu ile: Account'a yazmış olduğunuz method parametre olarak string bir değer alsın ve SOQL sorgusunda name içinde herhangi bir yerinde 'parametre' geçiyorsa getirsin. sonuçları debug mesajı ile yazdırın.
         List<Account>listAccParametre = [Select Name FROM Account WHERE Name like :'%'+X+'%'];
         System.debug('Isimlerinde University gecenlerin listesi = ' + listAccParametre);

    }            
    public static void contact_SOQL(){
        //4 - "contact_SOQL" methodu ile: contact objesinden homePhone'u ve phone'u boş olanları getiriniz ve debug ile yazdırınız.
        List<Contact>listHomePhone = [Select Homephone, Phone FROM Contact WHERE Homephone = null and Phone = null];
        System.debug('Homephone ve phone bos olanlarin listesi = ' + listHomePhone);

    }
    public static void account_SOQL_3(){
        //5 - "account_SOQL_3" methodu ile: Account objesinde  Annual Revenue'lerinin (boş olmayan) toplamını bulan bir method yazın ve debug mesajı ile görüntüleyin.
        List<Account>listAnnualRevenueToplam = [Select AnnualRevenue FROM Account WHERE AnnualRevenue != null];
        System.debug(' Annual revenu lerinin toplami bos olmayanlarin listesi = ' + listAnnualRevenueToplam);
    }


   
}
