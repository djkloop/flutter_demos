import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyNavigate2 extends StatefulWidget {
  @override
  _MyNavigate2State createState() => _MyNavigate2State();
}

class _MyNavigate2State extends State<MyNavigate2> {
  static int recordCnt = 5;

  List<WordPair> items = generateWordPairs().take(recordCnt).toList();

  List<WordPair> _checks = new List();

  List<Widget> _renderRows() {
    int index = 0;

    Iterable<Widget> listTiles = items.map((wordPair) {
      index++;
      if (index == items.length) {
        return new ListTile(
          title: Text("load more", style: TextStyle(color: Colors.blue)),
          onTap: () {
            setState(() {
              items.addAll(generateWordPairs().take(recordCnt));
            });
          },
        );
      }

      var isExist = _checks.contains(wordPair);

      ListTile item = new ListTile(
        leading:
            new Icon(isExist ? Icons.check_box : Icons.check_box_outline_blank),
        title: new Text(wordPair.asUpperCase),
        onTap: () {
          setState(() {
            if (isExist) {
              _checks.remove(wordPair);
            } else {
              _checks.add(wordPair);
            }
            print(_checks);
          });

          // print(wordPair.asUpperCase);

          // var route = new MaterialPageRoute(builder: (BuildContext ctx) {
          //   return new Scaffold(
          //     appBar: AppBar(
          //       title: Text('app bar'),
          //     ),
          //     body: new Center(
          //       child: Text(
          //         wordPair.asUpperCase,
          //         style: TextStyle(fontSize: 26.0, color: Colors.blue),
          //         )
          //     ),
          //   );
          // });

          // Navigator.of(context).push(route);
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
        title: Text("app bar"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.list),
              onPressed: () {

                Iterable<Widget>  items = _checks.map((_check) {
                  return Text(_check.asUpperCase, style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.red
                  ),);
                });

                var route = new MaterialPageRoute(builder: (BuildContext ctx) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text("app bar"),
                    ),
                    body: Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: items.toList()
                      ),
                    ),
                  );
                });
                Navigator.of(context).push(route);
              })
        ],
      ),
      body: Container(
        child: ListView(
          children: _renderRows(),
        ),
      ),
    );
  }
}
