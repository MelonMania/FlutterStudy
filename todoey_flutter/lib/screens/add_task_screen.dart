import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_screen.dart';
import '../widgets/task_tile.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskWidget;

  AddTaskScreen({this.addTaskWidget});

  final _textControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                ),
              ),
              TextField(
                  controller: _textControl,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newValue) {
                    newTaskTitle = _textControl.text;
                  }),
              SizedBox(
                height: 15.0,
              ),
              TextButton(
                  onPressed: () {
                    addTaskWidget(newTaskTitle);
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.lightBlue),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  )),
            ]),
      ),
    );
  }
}
