import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import '../services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async{
    http.Response response = await http.get('http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=664f067cac70f1ddb9a88dd5fb8b6d3e');

    if(response.statusCode == 200){
      String data = response.body;
      var decodedData = jsonDecode(data);

      double temp = decodedData['main']['temp'];
      int id = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];

      print(temp);
      print(id);
      print(cityName);
    }else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
