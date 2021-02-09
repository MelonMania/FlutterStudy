import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'screens/addTask_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => TasksScreen(),
      '/second': (context) => AddTaskScreen(),
    });
  }
}
