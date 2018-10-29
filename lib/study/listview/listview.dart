import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {

  static int recordCnt = 100;

  List<WordPair> items = generateWordPairs().take(recordCnt).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "app bar"
        )
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.tealAccent
        ),
        child: ListView.builder(
          itemBuilder: (BuildContext ctx, int idx) {
          if(idx > items.length -1) {
            items.addAll(generateWordPairs().take(recordCnt));
          }
          return Text(
             items[idx].asUpperCase,
             style: TextStyle(
               fontSize: 24.0,
               color: Colors.black
             ),
            );
          }
        )
      ),
    );
  }
}