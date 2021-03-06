import 'package:flutter/material.dart';

class MyStackLayout extends StatefulWidget {
  _MyStackLayoutState createState() => _MyStackLayoutState();
}

class _MyStackLayoutState extends State<MyStackLayout> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(31, (index) {
      var url = "00" + (index + 1).toString();
      url = url.length > 3 ? url.substring(1) : url;
      return Container(
        color: Colors.deepPurple,
        child: Stack(
          alignment: Alignment(1.0, -1.0),
          children: <Widget>[
            Image.asset(
              "images/$url.png",
              fit: BoxFit.cover,
            ),
            Text(
              (index+1).toString(),
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.pink,
              ),
            ),
          ],
        ),
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
