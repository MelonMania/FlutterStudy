import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}


void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

Expanded buildKey(int num){
  List<Color> colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.teal, Colors.blue, Colors.purple];
  return Expanded(
    child: FlatButton(
      color: colors[num-1],
      onPressed: () {
        playSound(num);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int i = 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for(int i=1; i<8; i++) buildKey(i)
            ],
          ),
        ),
      ),
    );
  }
}
