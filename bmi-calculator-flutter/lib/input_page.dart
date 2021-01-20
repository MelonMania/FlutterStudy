import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(Coulor : Color(0xFF1D1F33)),
              ),
              Expanded(
                child: ReusableCard(Coulor : Color(0xFF1D1F33)),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCard(Coulor : Color(0xFF1D1F33)),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(Coulor : Color(0xFF1D1F33)),
              ),
              Expanded(
                child: ReusableCard(Coulor : Color(0xFF1D1F33)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color Coulor;

  ReusableCard({@required this.Coulor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Coulor,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
