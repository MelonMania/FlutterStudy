import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomBarHeight = 60.0;
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleColor == inactiveCardColor) {
        maleColor = activeCardColor;
        femaleColor = inactiveCardColor;
      } else {
        maleColor = inactiveCardColor;
        femaleColor = activeCardColor;
      }
    } else {
      if (femaleColor == inactiveCardColor) {
        femaleColor = activeCardColor;
        maleColor = inactiveCardColor;
      } else {
        femaleColor = inactiveCardColor;
        maleColor = activeCardColor;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    Coulor: maleColor,
                    cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    Coulor: femaleColor,
                    cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCard(
              Coulor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(
                  Coulor: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  Coulor: activeCardColor,
                ),
              ),
            ]),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomBarHeight,
          ),
        ],
      ),
    );
  }
}
