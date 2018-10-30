import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer In Flutter"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/002.png",
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                    Text("djkloop", style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
