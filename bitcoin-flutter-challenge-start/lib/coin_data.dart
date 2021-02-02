import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future getCoinData() async{
    http.Response response = await http.get('$coinAPIURL/BTC/USD?apikey=$apiKey');

    if(response.statusCode == 200){
      var coinData = jsonDecode(response.body);

      return coinData;
    }
    else{
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}