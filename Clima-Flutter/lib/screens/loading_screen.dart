import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';

import '../services/location.dart';
import '../services/networking.dart';
import '../services/weather.dart';
import '../services/weather.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';

import 'location_screen.dart';
import 'location_screen.dart';
import 'location_screen.dart';

const apiKey = '664f067cac70f1ddb9a88dd5fb8b6d3e';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;
  var weatherData;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async{
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    Network network = Network('http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    weatherData = await network.getData();
  }


  @override
  Widget build(BuildContext context) {
    return LocationScreen(weatherData);
  }
}
