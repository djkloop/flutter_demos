import 'package:flutter/material.dart';
// import 'package:hello_world_flutter/study/listview/listview.dart';
// import 'package:hello_world_flutter/study/listview2/listview2.dart';
// import 'package:hello_world_flutter/study/navigate/navigate.dart';
// import 'package:hello_world_flutter/study/navigate2/navigate2.dart';
// import 'package:hello_world_flutter/study/snackbar/snackbar.dart';
// import 'package:hello_world_flutter/study/layout/layout.dart';
// import 'package:hello_world_flutter/study/gridview/gridview.dart';
// import 'package:hello_world_flutter/study/stacklayout/stacklayout.dart';
// import 'package:hello_world_flutter/study/card/cardlayout.dart';
// import 'package:hello_world_flutter/study/tabs/tabs.dart';
// import 'package:hello_world_flutter/study/drawer/drawer.dart';
// import 'package:hello_world_flutter/study/textfield/textfield.dart';
// import 'package:hello_world_flutter/study/cacheimage/cacheimage.dart';
// import 'package:hello_world_flutter/study/listview3/listview3.dart';
// import 'package:hello_world_flutter/study/listview5/listview5.dart';
// import 'package:hello_world_flutter/study/listview6/listview6.dart';
// import 'package:hello_world_flutter/study/scaffold-dart/scaffold.dart';
import 'package:hello_world_flutter/study/bottom-appbar/bottom_appbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'flutter app',
      home:  new BottomAppBarDemo(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   WordPair wordPair = WordPair.random();

//   _onPressedFun() {
//     print("click");
//     setState(() {
//       wordPair = WordPair.random();
//     });
//     print(wordPair.asUpperCase);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Center(
//         child: new Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Text(
//               wordPair.asUpperCase,
//               style: new TextStyle(fontSize: 26.0, color: Colors.blue)
//             ),
//             new RaisedButton(onPressed: _onPressedFun, child: new Text("按钮")),
//           ]
//         ),
//       );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//     title: "My Flutter App",
//     home: new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Flutter Demo!..!"),
//       ),
//       body: new MyHomePage(),
//     ),
//   );
//   }
// }

// flutter 入口
// void main() {
//   runApp(new MaterialApp(
//     title: "My Flutter App",
//     home: new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Flutter Demo!.."),
//       ),
//       body: new Center(
//         child: new Text(
//           WordPair.random().asUpperCase,
//           style: new TextStyle(
//             fontSize: 27.0,
//             color: Colors.blue
//           )
//         )
//       ),
//     ),
//   ));
// }
