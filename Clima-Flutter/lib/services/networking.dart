import 'package:http/http.dart' as http;
import 'location.dart';
import 'dart:convert';

const apiKey = '664f067cac70f1ddb9a88dd5fb8b6d3e';

class Network{

  final String url;

  Network(this.url);

  Future getData() async{
    http.Response response = await http.get(url);

    if(response.statusCode == 200){
      String data = response.body;

      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }
  }
}
