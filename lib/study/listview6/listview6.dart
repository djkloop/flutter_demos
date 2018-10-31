import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

class MyListView6 extends StatefulWidget {
  @override
  _MyListView6State createState() => _MyListView6State();
}

class _MyListView6State extends State<MyListView6> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();

  List pokemons = [];

  loadData() async {
    Response response = await get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");

    var jsonDatas = jsonDecode(response.body);
    setState(() {
      pokemons = jsonDatas["pokemon"];
    });
  }

  List<Widget> _renderRows() {
    int index = 0;

    Iterable<GestureDetector> items = pokemons.map((pokemon) {
      String imageUrl = pokemon['img'];
      String name = pokemon['name'];
      String candy = pokemon['candy'];

      index++;

      var item = Container(
        // onTap: () {
        //   var snackbar = SnackBar(
        //     content: Text(
        //       name,
        //       style: TextStyle(
        //         color: Colors.black,
        //       ),
        //     ),
        //     backgroundColor: Colors.deepOrangeAccent,
        //     duration: Duration(
        //       milliseconds: 500,
        //     ),
        //   );
        //   _scaffoldState.currentState.showSnackBar(snackbar);
        // },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.amberAccent : Colors.cyanAccent,
          ),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: TransitionToImage(
                  AdvancedNetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                  placeholder: new Icon(Icons.error),
                  width: 68.0,
                  height: 68.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      candy,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

      GestureDetector gestureDetector = GestureDetector(
        child: item,
        onTap: () {
          var snackbar = SnackBar(
            content: Text(
              name,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.deepOrangeAccent,
            duration: Duration(
              milliseconds: 500,
            ),
          );
          _scaffoldState.currentState.showSnackBar(snackbar);
        },
        onDoubleTap: () {
          var snackbar = SnackBar(
            content: Text(
              candy,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.deepOrangeAccent,
            duration: Duration(
              milliseconds: 500,
            ),
          );
          _scaffoldState.currentState.showSnackBar(snackbar);
        },
        onLongPress: () {
          var snackbar = SnackBar(
            content: Text(
              imageUrl,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.deepOrangeAccent,
            duration: Duration(
              milliseconds: 500,
            ),
          );
          _scaffoldState.currentState.showSnackBar(snackbar);
        },
      );

      return gestureDetector;
    });

    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text('list view 4'),
      ),
      body: Container(
        child: ListView(
          children: _renderRows(),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadData();
    setState(() {});
  }
}
