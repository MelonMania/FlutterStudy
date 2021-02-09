import 'dart:developer';

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      child: Column(children: <Widget>[
        Text(
          'Add Task',
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 30.0,
          ),
        ),
        TextButton(
            onPressed: () {
              print('add task');
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.lightBlue),
            ),
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            )),
      ]),
    );
  }
}
