import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'F5EDF9C8-7E8A-43A6-813F-943AE4FE953A';

class CoinData {
  var eachRate = Map<String,int>();

  Future<dynamic> getCoinData(String selectedCurrency) async {
    for (String crypto in cryptoList){
      String requestURL = '$coinAPIURL/$crypto/$selectedCurrency?apikey=$apiKey';
      http.Response response = await http.get(requestURL);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        int lastPrice = decodedData['rate'].toInt();
        eachRate[crypto] = lastPrice;
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return eachRate;
  }
}
