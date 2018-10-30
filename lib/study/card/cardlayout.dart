import 'package:flutter/material.dart';

class MyCardLayout extends StatefulWidget {
  @override
  _MyCardLayoutState createState() => _MyCardLayoutState();
}

class _MyCardLayoutState extends State<MyCardLayout> {
  @override
  Widget build(BuildContext context) {
    final _myCard = Card(
      elevation: 10.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(7, 102, 255, 1.0),
            Color.fromRGBO(3, 28, 128, 1.0),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              title: Text(
                "djkloop",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "programmers",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              title: Text(
                "example@gmail.com",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "+86 186 9920 1234",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    var sizeBox = Container(
      margin: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 16.0),
              color: Color.fromRGBO(16, 20, 188, 1.0),
              blurRadius: 25.0,
              spreadRadius: -9.0,
            ),
          ],
        ),
        child: SizedBox(
          height: 210.0,
          child: _myCard,
        ),
      ),
    );

    final _myContainer = Center(
      child: sizeBox,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: _myContainer,
    );
  }
}
