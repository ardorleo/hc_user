import 'package:flutter/material.dart';

/**
 * 首页
 */

class IndexScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
          actions: <Widget>[
            new Container()
          ],
          centerTitle: true,
        ),
        body: new Center(
          child: null,
        ),
      ),
    );
  }

}