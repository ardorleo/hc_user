import 'package:flutter/material.dart';

/**
 *
 *
 * add by wuxw
 * date: 2019/2/24
 **/

class CartScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

@override
Widget build(BuildContext context) {
  return new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('购物车'),
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