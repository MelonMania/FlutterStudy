import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final Function check;
  final bool value;
  TodoList({this.value, this.check});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Buy Milk',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          Checkbox(
            value: value,
            onChanged: check,
          ),
        ],
      ),
    );
  }
}
