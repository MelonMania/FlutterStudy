import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app_first1/word_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WordPair wordPair = WordPair.random();
    return MaterialApp(
      home: WordListPage(),
    );
  }
}






