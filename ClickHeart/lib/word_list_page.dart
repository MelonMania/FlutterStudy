import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_first1/favorite_list_page.dart';

Set<WordPair> _saved = Set<WordPair>();

class WordListPage extends StatelessWidget {
  const WordListPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("Check Words"),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return FavoriteListPage(_saved.toList());
              }));
            }
          )],
      ),
      body: Center(child: RandomWords()),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {

  List<WordPair> words = [];

  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index >= words.length)
          words.addAll(generateWordPairs().take(10));
        return _getRow(words[index]);

      },
    );
  }

  List<Widget> items = [];

  Widget _getRow(WordPair wordPair) {
    bool _isAlreadysaved = _saved.contains(wordPair);
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: <Widget> [
        ListTile(
          onTap: (){
            setState(() {
              if(_isAlreadysaved){
                _saved.remove(wordPair);
              } else{
                _saved.add(wordPair);
              }
            });

            print(_saved.toString());
          },
          title: Text(
            wordPair.asCamelCase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            wordPair.asCamelCase,
          ),
          trailing: Icon(
            _isAlreadysaved?Icons.favorite:Icons.favorite_border,
            color: Colors.redAccent,
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
          height: 5,
          indent: 16,
          endIndent: 16,
        )

      ],
    );
  }
}