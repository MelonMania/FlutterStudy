import 'file:///G:/AndroidStudio/bmi-calculator-flutter/lib/components/bottom_bar.dart';
import 'package:bmi_calculator/caculate_bmi.dart';
import 'package:bmi_calculator/constant_list.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String state;
  final String message;

  ResultPage({@required this.bmiResult, @required this.state, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              Coulor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    state.toUpperCase(),
                    style: kStateTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    message,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomAppBar(
              child: BottomBar(
                text: 'RE-CALCULATE YOUR BMI',
                press: () {
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
