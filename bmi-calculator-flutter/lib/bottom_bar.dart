import 'package:flutter/material.dart';
import 'constant_list.dart';


class BottomBar extends StatelessWidget {

  final String text;
  final Function press;

  BottomBar({this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:Container(
        color: kBottomColor,
        margin: EdgeInsets.only(top: 8.0),
        width: double.infinity,
        height: kBottomBarHeight,
        child: Center(
          child: Text(
            text,
            style: kBottomTextStyle,
          ),
        ),
      ),
    );
  }

}