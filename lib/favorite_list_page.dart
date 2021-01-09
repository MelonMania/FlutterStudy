import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


class FavoriteListPage extends StatelessWidget {

  final List<WordPair> favorites;

  FavoriteListPage(
      this.favorites, {
        Key key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text("Favorite List"),
        ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                  title: Text(
                    favorites[index].asCamelCase,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  subtitle: Text(favorites[index].asCamelCase,),
              );
        },

        )
    );}

}

