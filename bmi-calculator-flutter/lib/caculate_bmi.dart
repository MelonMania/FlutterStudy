import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class CaculateBMI{
  final int height;
  final int weight;

  double _bmi;
  String _state;

  CaculateBMI({@required this.height, @required this.weight});

  String result(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bodyState(){
    _bmi < 18.5 ? _state = 'UnderWeight' : _bmi < 23 ? _state = 'NORMAL' : _state = 'OverWeight';
    return _state;
  }

  String messageToPerson(){
    _bmi < 18.5 ? _state = 'You must eat more & more' : _bmi < 23 ? _state = 'Your body is perfect. Everyone wants your body' : _state = 'You have to exercise. Go to GYM!!!';
    return _state;
  }
}