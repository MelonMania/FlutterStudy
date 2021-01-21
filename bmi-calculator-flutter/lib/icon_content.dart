import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0);
const iconSize = 80.0;

class IconContent extends StatelessWidget {
  final IconData newIcon;
  final String label;

  IconContent(this.newIcon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          newIcon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}