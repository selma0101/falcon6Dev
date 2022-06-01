MyCity sforce = new MyCity();
sforce.stringMethod();
sforce.dateMethod();
sforce.cityInformation();




MyCity ct = new MyCity();
ct.favoriteCafe = 'El Mayor';
ct.favoritePark = 'Parque Xochitla';
ct.favoriteMall = 'Mundo E';
ct.favoriteStore = 'H&M';
system.debug(ct.myFavoriteLocations('Ciudad de Mexico'));








MyCity times = new MyCity();
times.printString(10,'Merhaba');
