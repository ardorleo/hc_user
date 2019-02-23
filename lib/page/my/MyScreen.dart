import 'package:flutter/material.dart';

/**
 * 我的 界面
 *
 * add by wuxw
 * date: 2019/2/23
 **/


class MyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('我'),
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