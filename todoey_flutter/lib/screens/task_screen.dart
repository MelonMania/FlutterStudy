import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/todo_list.dart';
import 'addTask_screen.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 30.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35.0,
              child: Icon(
                Icons.list,
                size: 35.0,
                color: Colors.lightBlue[300],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Text(
              'Todoey',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              '12 Tasks',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: Column(
              children: <Widget>[
                TodoList(
                  value: isChecked,
                  check: (newValue) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, '/second');
          });
        },
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
        elevation: 5.0,
      ),
    );
  }
}
