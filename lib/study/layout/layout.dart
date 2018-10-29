import 'package:flutter/material.dart';

class MyLayout extends StatefulWidget {
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("app bar!")),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.limeAccent,
                  child: Image.asset(
                    "images/lake.jpg",
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.lightGreen,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Oeschinen Lake Campground',
                            style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[500],
                            ),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.star),
                    Text("66")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.call),
                        Text("CALL"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.near_me),
                        Text("ROUTE"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.share),
                        Text("SHARE"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.indigo,
                child: new Text(
                  '''
                    Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
                  '''
                ),
              )
            ],
          ),
        ));
  }
}
