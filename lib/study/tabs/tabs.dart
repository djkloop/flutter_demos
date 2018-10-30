import 'package:flutter/material.dart';
import 'home/home.dart';
import 'android/android.dart';
import 'group/group.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    final tabController = DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs In Flutter"),
            bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorWeight: 3.0,
              tabs: <Widget>[
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Group",
                  icon: Icon(Icons.group),
                ),
                Tab(
                  text: "Android",
                  icon: Icon(Icons.android),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Home(),
              Group(),
              Android()
            ],
          ),
        ));
    return Container(
      child: tabController,
    );
  }
}
