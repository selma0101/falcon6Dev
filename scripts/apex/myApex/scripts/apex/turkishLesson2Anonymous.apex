TurkishLesson2 t = new TurkishLesson2();
t.variableDefine();
t.text = 'Salesforce\'u öğrendim..';
System.debug('t objesi => ' + t);

TurkishLesson2 l = new TurkishLesson2();
l.variableDefine();
System.debug('l objesi => ' + l);
l.privateMethod();

TurkishLesson2 t2 = new TurkishLesson2();
t2.welcome('Marry');
t2.welcome('Ali');
t2.welcome('Fatma');

TurkishLesson2 t3 = new TurkishLesson2();
t3.welcome('Esma');

TurkishLesson2 t4 = new TurkishLesson2();
//integer lng = t4.stringMetot('Hello World');
//System.debug(lng);
t4.stringMetot('Bu yazdigim cumle kac karakterden olusuyor? ');
//system.debug(t4.stringMetot('Bu yazdigim cumle kac karakterden olusuyor? '));

TurkishLesson2 t5 = new TurkishLesson2();
//decimal tplm = t5.price('Hayvan Çiftliği', 22.35, 5);
decimal tplm1 = t5.price('Hayvan Çiftliği', 22.35, 5);
//System.debug('toplam ödeyeceğiniz ücret = '+ tplm1);
Decimal tplm2 = t5.price('Suc ve Ceza', 27.40, 7);
Decimal tplm = tplm1 + tplm2;
System.debug('toplam ödeyeceğiniz ücret = '+ tplm);