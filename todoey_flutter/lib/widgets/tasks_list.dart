import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_screen.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TileList extends StatefulWidget {
  final List<Task> taskList;

  TileList(this.taskList);

  @override
  _TileListState createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            title: widget.taskList[index].title,
            isChecked: widget.taskList[index].isDone,
            checkboxCallback: (bool value) {
              setState(() {
                widget.taskList[index].toggleDone();
              });
            },
          );
        },
        itemCount: widget.taskList.length);
  }
}
