import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constant_list.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(
                  Coulor: selectedGender == GenderType.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  Coulor: selectedGender == GenderType.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCard(
              Coulor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 0,
                    max: 200,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    label: height.toString(),
                    onChanged: (double value){
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      Coulor: kActiveCardColor,
                      cardChild: Text(
                        '77',
                        style: kNumberTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Coulor: kActiveCardColor,
                      cardChild: Text(
                        '77',
                        style: kNumberTextStyle,
                      ),
                    ),
                  ),
                ]),
          ),
          Container(
            color: kBottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomBarHeight,
          ),
        ],
      ),
    );
  }
}
