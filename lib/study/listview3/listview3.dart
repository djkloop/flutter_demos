import 'package:flutter/material.dart';

class MyListView3 extends StatefulWidget {
  @override
  _MyListView3State createState() => _MyListView3State();
}

class _MyListView3State extends State<MyListView3> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "RED",
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "BLUE",
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  "GREEN",
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Center(
                child: Text(
                  "PURPLE",
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
