import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Center(child: Text('I am Poor')),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/coal.jpg'),
          ),
        ),
      ),
    ),
  );
}
