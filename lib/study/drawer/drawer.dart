import 'package:flutter/material.dart';
import '../tabs/home/home.dart';
import '../tabs/group/group.dart';
import '../tabs/android/android.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget activeWidget = Home();

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "images/022.png",
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "djkloop",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    Text(
                      "programmers",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                setState(() {
                  activeWidget = Home();
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Group"),
              onTap: () {
                setState(() {
                  activeWidget = Group();
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.android),
              title: Text("Android"),
              onTap: () {
                setState(() {
                  activeWidget = Android();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: activeWidget,
      ),
    );
  }
}
