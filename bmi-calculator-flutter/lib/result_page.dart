import 'package:bmi_calculator/bottom_bar.dart';
import 'package:bmi_calculator/constant_list.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';


String state = 'NORMAL';


class ResultPage extends StatelessWidget {

  final int height;
  final int weight;

  ResultPage(this.height, this.weight);

  double calcBMI(int height, int weight){
    double heightCalc = height.toDouble() / 100.0;
    double BMI = weight / (heightCalc*heightCalc);
    return BMI;
  }

  @override
  Widget build(BuildContext context) {

    double result = calcBMI(height, weight);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: kActiveCardColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin : EdgeInsets.all(20.0),
                      child: Text(
                        'NORMAL',
                        style: kStateTextStyle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin : EdgeInsets.all(20.0),
                      child: Text(
                        result.toStringAsFixed(1),
                        style: kResultNumberTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomAppBar(
                child: BottomBar(
                  text: 'RE-CALCULATE YOUR BMI',
                  press: (){
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),
          ),
        ],
      ),
    );
  }

}
