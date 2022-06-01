public with sharing class MyCity {
    public void stringMethod() {
        string sfDev = 'I am a salesforce Developer';

        Boolean checkword = sfDev.contains('force');
        system.debug(' Does the force word exist in the sentence? : ' + checkword );

        integer checkCharacter = sfDev.length();
        system.debug(' How many characters are there in this sentence? : ' + checkCharacter);

        string convertLetters = sfDev.toUpperCase();
        system.debug(' Convert all letters to uppercase : ' + convertLetters );
        

    }

    public void dateMethod(){
        date currentDate = date.today();
        system.debug(' Bugunun tarihi: ' + currentDate);

        dateTime dtNow = dateTime.now();
        system.debug(' Su anki tarih ve saat: ' + dtNow);
        system.debug(' 50 saat sonraki tarih ve zaman: ' + dtNow.addHours(50));


    }

    public void cityInformation(){
        date kurulusMex = date.newInstance(1824, 11, 1);
        system.debug(' Meksikanin kurulus tarihi: ' + kurulusMex);

        Time saleSol = time.newInstance(7, 15, 00, 00);
        system.debug(' Meksikada  gun dogumu: ' + saleSol);

        date currentDate = date.today();
        dateTime beforemonths = currentDate.addMonths(-36);
        system.debug(' 36 ay onceki tarih: ' + beforemonths);
 }



    public string favoriteCafe = '';
    public string favoritePark = '';
    public string favoriteMall = '';
    public string favoriteStore = '';

    public string myFavoriteLocations(string miCiudad){
        system.debug('The most beautiful Cafe in my city : ' + favoriteCafe + ', most beautiful park : '+favoritePark + ', most beautiful mall : ' + favoriteMall + ', most beautiful store : ' + favoriteStore);
        return miCiudad;
    }



    public void printString(integer a,string message){
        for (Integer i = 1; i <= a; i++) {
            system.debug(i + ' ' + message);
            
        }
    }
      
}