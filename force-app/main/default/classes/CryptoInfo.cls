public  class CryptoInfo {
    public static decimal ShowPrice(string coinname) {
        Map<string, decimal> CryptoMap = new Map<string, decimal>();
        
        CryptoMap.put('BTC', 35.000);
        CryptoMap.put('ETH', 2.500);

        decimal price;
        price = CryptoMap.get(coinName);

        return price;

    }
}
