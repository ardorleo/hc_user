import 'package:flutter/material.dart';
import 'MyListView.dart';

void main() => runApp(new myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ListView",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("ListView"),
          ),
          body: new Center(
              child: new Container(
                height: 200.0,
                width: 200.0,
                child: new MyListView(),

              ),
          )
      )
    );
  }
}
