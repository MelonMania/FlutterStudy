import 'package:flutter/material.dart';
import '../widgets/task_tile.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final _textControl = TextEditingController();
  final tileList = TileList();

  @override
  Widget build(BuildContext context) {
    bool checked = false;
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
              ),
              SizedBox(
                height: 15.0,
              ),
              TextButton(
                  onPressed: () {
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
