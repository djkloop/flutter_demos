import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyNavigate extends StatefulWidget {
  @override
  _MyNavigateState createState() => _MyNavigateState();
}

class _MyNavigateState extends State<MyNavigate> {

  static int recordCnt = 5;

  List<WordPair> items = generateWordPairs().take(recordCnt).toList();

  List<Widget> _renderRows() {

    int index = 0;

    Iterable<Widget> listTiles = items.map((wordPair) {
      index++;
      if(index == items.length) {
        return new ListTile(
          title: Text("load more",
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

          var route = new MaterialPageRoute(builder: (BuildContext ctx) {
            return new Scaffold(
              appBar: AppBar(
                title: Text('app bar'),
              ),
              body: new Center(
                child: Text(
                  wordPair.asUpperCase,
                  style: TextStyle(fontSize: 26.0, color: Colors.blue),
                  )
              ),
            );
          });

          Navigator.of(context).push(route);
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