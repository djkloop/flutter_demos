import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyListView2 extends StatefulWidget {
  @override
  _MyListView2State createState() => _MyListView2State();
}

class _MyListView2State extends State<MyListView2> {

  static int recordCnt = 5;

  List<WordPair> items = generateWordPairs().take(recordCnt).toList();

  List<Widget> _renderRows() {

    int index = 0;

    Iterable<Widget> listTiles = items.map((wordPair) {
      index++;
      if(index == items.length) {
        return new ListTile(
          title: Text("加载更多...",
          style: TextStyle(color: Colors.blue)
          ),
          onTap: () {
            setState(() {
              items.addAll(generateWordPairs().take(recordCnt));
            });
          },
        );
      }
      ListTile item = new ListTile(
        title: new Text(wordPair.asUpperCase),
        onTap: () {
          print(wordPair.asUpperCase);
        },
      );
      return item;
    });
    return listTiles.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "app bar"
        )
      ),
      body: Container(
        child: ListView(
          children: _renderRows(),
        ),
      ),
    );
  }
}