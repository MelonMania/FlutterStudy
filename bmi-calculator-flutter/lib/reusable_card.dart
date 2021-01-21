import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color Coulor;
  final Widget cardChild;

  ReusableCard({@required this.Coulor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Coulor,
      ),
      child: cardChild,
      margin: EdgeInsets.all(15.0),
    );
  }
}