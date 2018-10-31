import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  _MyTextfieldState createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {

  String user;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField In Flutter."),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(6.0)),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "请输入姓名", contentPadding: EdgeInsets.all(10.0)),
                  onChanged: (text) {
                    user = text;
                  },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(6.0)),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "请输入密码", contentPadding: EdgeInsets.all(10.0)),
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(6.0)),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "请输入邮件", contentPadding: EdgeInsets.all(10.0)),
                  onChanged: (text) {
                    email = text;
                  },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("登陆"),
                  onPressed: () {
                    String content = "user：$user, email：$email, password：$password";
                    print(content);
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) {
                        return  Scaffold(
                          appBar: AppBar(
                            title: Text(
                              "details"
                            ),
                          ),
                           body: Center(
                             child: Text(
                               content
                             ),
                            ),
                        );
                      }
                    );
                    Navigator.of(context).push(route);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
