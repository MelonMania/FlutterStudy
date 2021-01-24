import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color Coulor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.Coulor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Coulor,
        ),
        child: cardChild,
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
