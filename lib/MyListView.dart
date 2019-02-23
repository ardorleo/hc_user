import 'package:flutter/material.dart';

class MyListView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 80,
          color: Colors.red,
        ),
        new Container(
          width: 80,
          color: Colors.black,
        )
      ],
    );
  }
}