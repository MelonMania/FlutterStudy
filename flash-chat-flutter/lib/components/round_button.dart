import 'package:flutter/material.dart';
import '../screens/registration_screen.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function press;

  RoundedButton({this.color, this.title, @required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: press,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
