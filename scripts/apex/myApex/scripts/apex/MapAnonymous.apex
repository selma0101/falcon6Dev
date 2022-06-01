map<string, string> mapCntCurrency = new map<string, string>();

   mapCntCurrency.put('USA', 'Dollar');
   mapCntCurrency.put('Japan', 'Yen');
   mapCntCurrency.put('France', 'Euro');
   mapCntCurrency.put('india', 'Rupees');
   mapCntCurrency.put('india', 'Rupee');
   mapCntCurrency.put('Turkey', 'Lira');
   system.debug('map of country vs currency : ' + mapCntCurrency);

   string IndiaCurrency = mapCntCurrency.get('india');
   string TurkeyCurrency = mapCntCurrency.get('Turkey');

   system.debug(' India Currency => ' + IndiaCurrency);
   system.debug(' Turkey Currency => ' + TurkeyCurrency);

   Set<String> countrySet = mapCntCurrency.keySet();
   system.debug(' Countries in map => ' + countrySet);

   List<String> currecyList = mapCntCurrency.values();
   system.debug(' Currency in map => ' + currecyList);

   for (string eachkey : countrySet) {
       string eachCurrency = mapCntCurrency.get(eachkey);
       string printString = 'Country is ' + eachkey + ' it s currency is ' + eachCurrency;
       system.debug(printString);
       
   }

  
      
  

   
