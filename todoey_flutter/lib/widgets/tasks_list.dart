import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 30.0),
      children: todoList,
    );
  }
}
