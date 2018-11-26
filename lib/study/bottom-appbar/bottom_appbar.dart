import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachViews;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachViews[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var route = MaterialPageRoute(builder: (BuildContext ctx) {
            return EachViews("new Page");
          });
          Navigator.of(context).push(route);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.near_me),
              color: Colors.white,
              onPressed: () => setState(() {
                    _index = 0;
                  }),
            ),
            IconButton(
              icon: Icon(Icons.edit_location),
              color: Colors.white,
              onPressed: () => setState(() {
                    _index = 1;
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _eachViews = List();
    _eachViews..add(EachViews('home'))..add(EachViews('me'));
  }
}
