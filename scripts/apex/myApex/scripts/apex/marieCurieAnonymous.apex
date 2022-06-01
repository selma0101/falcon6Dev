date currentDay = date.today();
date marieBirthday = date.newInstance(1867, 11, 7);

system.debug(' Bugunun tarihi : ' + currentDay + ' ve ' + 'Marie Curie nin dogum tarihi : ' + marieBirthday);

integer diaMarie = marieBirthday.daysBetween(currentDay);
system.debug(' Gun farki : ' + diaMarie );

integer mesMarie = marieBirthday.monthsBetween(currentDay);
system.debug(' Ay farki : ' + mesMarie);

integer anoMarie = diaMarie/365;
system.debug(' Yil farki : ' + anoMarie);

Boolean isLeapYear = date.isLeapYear(1867);
system.debug(' Artik yil midir? : ' + isLeapYear);