import 'package:flutter/material.dart';
import 'data.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';

class MyListView4 extends StatefulWidget {
  @override
  _MyListView4State createState() => _MyListView4State();
}

class _MyListView4State extends State<MyListView4> {
  List pokemons = [];

  loadData() async {
    var jsonDatas = jsonDecode(jsonData);
    print("jsonDatas: $jsonDatas");
    pokemons = jsonDatas["pokemon"];
  }

  List<Widget> _renderRows() {
    int index = 0;

    Iterable<Widget> items = pokemons.map((pokemon) {
      String imageUrl = pokemon['img'];
      String name = pokemon['name'];
      String candy = pokemon['candy'];

      index++;
      return ListTile(
        title: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.amberAccent : Colors.cyanAccent,
          ),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  placeholder: CircularProgressIndicator(),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name),
                    Text(candy),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });

    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
