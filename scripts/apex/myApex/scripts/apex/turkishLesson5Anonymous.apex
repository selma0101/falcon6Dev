TurkishLesson5.listMetot();
TurkishLesson5.catMetot();

//math methods
integer a = 15;
integer b = 21;

//2 sayıdan büyük olanını getiren metot
integer bSayi = math.max(a, b);
System.debug('büyük sayı = ' + bSayi);

//2 sayıdan küçük olanını getiren metot
integer kSayi = math.min(a, b);
System.debug('küçük sayı = ' + kSayi);

decimal c = 23.63456;
// floor ondalık kısmı siler
decimal d = math.floor(c);
System.debug('floor d = ' + d);

//roundToLong ondalık kısmı yuvarlar..
Decimal e = math.roundToLong(c);
System.debug('round e = ' + e);

//Bilgisayar rastgele(random) 1 den 10 a kadar 1 sayı getirsin..
decimal randomNum = Math.floor(Math.random()*10 + 1);
System.debug(randomNum);