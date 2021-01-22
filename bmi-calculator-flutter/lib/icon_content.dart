import 'package:flutter/material.dart';
import 'constant_list.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}