import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(31, (index) {
      var url = "00" + (index + 1).toString();
      url = url.length > 3 ? url.substring(1) : url;
      return Container(
        color: Colors.deepPurple,
        child: Image.asset("images/$url.png", fit: BoxFit.cover),
      );
    });

    return Scaffold(
      appBar: AppBar(title: Text("grid view")),
      body: Container(
          child: GridView.count(
        crossAxisCount: 3,
        children: items,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      )),
    );
  }
}
