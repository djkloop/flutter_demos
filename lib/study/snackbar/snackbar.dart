import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  static int recordCnt = 5;

  List<WordPair> items = generateWordPairs().take(recordCnt).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("app bar")),
        body: new Builder(
          builder: (BuildContext context) {
            return Container(
                padding: new EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.tealAccent),
                child:
                    ListView.builder(itemBuilder: (BuildContext ctx, int idx) {
                  if (idx > items.length - 1) {
                    items.addAll(generateWordPairs().take(recordCnt));
                  }
                  return new ListTile(
                    title: Text(
                      items[idx].asUpperCase,
                      style: TextStyle(fontSize: 24.0, color: Colors.pink),
                    ),
                    onTap: () {
                      final snackbar = new SnackBar(
                          content: Text(
                        items[idx].asUpperCase,
                        style: TextStyle(),
                      ));
                      Scaffold.of(context).showSnackBar(snackbar);
                    },
                  );
                }));
          },
        ));
  }
}
