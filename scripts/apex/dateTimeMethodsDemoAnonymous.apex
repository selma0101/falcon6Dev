dateTimeMethodsDemo dtm = new dateTimeMethodsDemo();
date newDate = date.today();
boolean newDateLYcheck = dtm.leapYearCheck(newDate);
system.debug(newDateLYcheck);
date dt1 = date.newInstance(2020, 01, 01);
boolean lpCheck2 = dt.leapYearCheck(dt1);
system.debug('leap year check 2 ' + lpCheck2);