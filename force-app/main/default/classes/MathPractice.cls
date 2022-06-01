
public class MathPractice {
    public decimal practiceOne(Decimal length, Decimal width) {

        Decimal cevreu = 2*(length + width);
        return cevreu;
    }
       
  

    public decimal practiceTwo(Decimal boy, Decimal kilo) {
        Decimal vucutKitleIndex = kilo / (boy * boy);
        return vucutKitleIndex;

    }



    public decimal practiceThree(Decimal n1, Decimal n2) {
        Decimal ort = (n1 + n2) / 2;
        return ort;
    }
         
    //PRACTICE FOUR//

    public decimal practiceFour(Decimal tutar){
        Decimal Bonus;
        if(tutar <= 0){
            system.debug(' Hatali bir deger girdiniz.');
        } else if (tutar>=0 && tutar<=49){
            system.debug(' Bonus kazanamadiniz.');
        }else if (tutar>=50 && tutar<=199){
            system.debug( tutar + ' tutarindaki alisveris karsiligi 10$ tutarinda bonus kazandiniz.');
        }else if(tutar>=200 && tutar<=499){
            system.debug( tutar + ' tutarindaki alisveris karsiligi 30$ tutarinda bonus kazandiniz.');
        }else if (tutar>=500){
            system.debug( tutar + ' tutarindaki alisveris karsiligi 50$ tutarinda bonus kazandiniz.');
        }
        return bonus;
    }


 /* 
    //PRACTICE FIVE IF METODU

    public decimal practiceFive(string food, integer quantity){
        integer price;
        if (food == 'ekmek'){
            price = 1;
        }else if (food == 'simit'){
            price = 2;
        }else if (food == 'kek') {
            price = 3;   
        }
        decimal total = quantity * price;
        system.debug(' Almis oldugunuz ' + quantity + ' adet '+ food + ' tutari ' + total + ' $ dir.');
        return price;

        
    }  */




 /*    //PRACTICE FIVE SWITCH METODU
    public decimal practiceFive(string food, integer quantity){
        integer price;
        switch on food {
            when 'ekmek' {
                price=1; 
            }
            when 'simit' {
                price=2;    
            }
            when 'kek'{
                price=3;
            }
       }
       decimal total = quantity * price;
       system.debug(' Almis oldugunuz ' + quantity + ' adet '+ food + ' tutari ' + total + ' $ dir.');
       return price;

      } 
    //PRACTICE SIX

    public decimal practiceSix(decimal a, decimal b, string operation){
        decimal sonuc;

        if (operation == 'cevre'){
            sonuc = 2*(a+b);
            integer cevre = Math.round(sonuc);
            system.debug('Dikdortgenin cevre uzunlugu : ' + cevre);

        }else if (operation == 'alan'){
            sonuc = (a*b);
            integer alan = Math.round(sonuc);
            system.debug('Dikdortgenin alani : ' + alan);

        }else {
            system.debug('Lutfen gecerli bir islem giriniz!');
        }
        return sonuc;
    } */
    //PRACTICE SEVEN
/*     public string practiceSeven(decimal boy, decimal kilo){
        string result;
        decimal BMI = kilo/(boy*boy);
        decimal VBMI = BMI.setScale(1);

        if (BMI >= 0 && BMI <= 18.4){
            result = 'Zayif';
            system.debug('Vucut kitle indeksi : ' + VBMI +', ' + 'Sonuc: ' + result);
        }else if (BMI>= 18.5 && BMI<=24.9){
            result = 'Normal';
            system.debug('Vucut kitle indeksi : ' + VBMI +', ' + 'Sonuc: ' + result);
        }else if (BMI>= 25 && BMI<=29.9){
            result = 'Kilolu';
            system.debug('Vucut kitle indeksi : ' + VBMI +', ' + 'Sonuc: ' + result);
        }else {
            system.debug('Lutfen girmis oldugunuz boy ve kilo degerlerini kontrol ediniz!!');
        }
        return result;
    }    */

    //PRACTICE EIGHT

    c practiceEight(integer a, integer b){
        integer toplam = 0;
        if (a == b){
            toplam =a+b;

            
        }else if(a>b) {
            for (Integer i = b; i <= a; i++) {
                toplam += i;
            } 


        } else {
                for (Integer i = a; i <= b ; i++) {
                    toplam += i;
                    
                }
            }
            system.debug( a + ' ile  ' + b +  ' arasindaki sayilarin toplami = ' + toplam);
             return toplam;
        }


        // 23.SORU 23-'MathPractice' class ının içinde 'ageCalculate' adında bir method oluşturun. Method parametre olarak Map alsın. Anonimden göndereceğimiz map listesinin key'i string (isimler), values'u (Date) doğum günlerini saklasın. Method, Listedeki kişilerin yaşlarını hesaplasın. (Yaşlar virgülden sonra en fazla bir basamak olsun). Bu bilgiyi debug mesajı ile yazdırın.
          //İpucu: Virgülden sonraki değerler için "setScale(1)" methodunu kullanabilirsiniz.

        public static void ageCalculate ( Map <string,Date> dogumGun);
        decimal yas = 0;
        for (string eachName : keySet) {


            
        }




}