import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constant_list.dart';
import 'round_button.dart';
import 'bottom_bar.dart';

enum GenderType { male, female }

class Values{
  int height = 170;
  int weight = 70;
  int age = 20;

  int returnHeight() => height;
  int returnWeight() => weight;
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  Values values = Values();

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
                        values.height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 26),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: values.height.toDouble(),
                      min: 0,
                      max: 200,
                      inactiveColor: Color(0xFF8D8E98),
                      label: values.height.toString(),
                      onChanged: (double value) {
                        setState(() {
                          values.height = value.round();
                        });
                      },
                    ),
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
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            values.weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                button: (){
                                  setState(() {
                                    values.weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                  button: (){
                                    setState(() {
                                      values.weight++;
                                    });
                                  },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Coulor: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            values.age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                button: (){
                                  setState(() {
                                    values.age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                button: (){
                                  setState(() {
                                    values.age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
          BottomAppBar(
            child: BottomBar(
              text: 'CALCULATE',
              press: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(values.height, values.weight)),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }

}



