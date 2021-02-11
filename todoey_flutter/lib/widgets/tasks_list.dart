import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_screen.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TileList extends StatefulWidget {
  @override
  _TileListState createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  List<Task> taskList = [
    Task(title: 'aaa'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            title: taskList[index].title,
            isChecked: taskList[index].isDone,
            checkboxCallback: (bool value) {
              setState(() {
                taskList[index].toggleDone();
              });
            },
          );
        },
        itemCount: taskList.length);
  }
}
