import 'package:flutter/material.dart';

String content = '';

class TaskTile extends StatefulWidget {
  final String contents;

  TaskTile({this.contents});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    content = widget.contents;
    return ListTile(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      title: Text(
        content,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: TaskCheckbox(
        isChecked: isChecked,
        change: (newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function change;

  TaskCheckbox({this.isChecked, this.change});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: change,
    );
  }
}
