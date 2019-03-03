import 'package:flutter/material.dart';
import 'IndexSwiper.dart';
import 'IndexAppBar.dart';
import 'IndexMenu.dart';
/**
 * 首页
 */

class IndexScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar:new IndexAppBar().createAppBar(),
        body: Container(
          child: Column(
            children: <Widget>[
              new IndexSwiper(),
              new IndexMenu()
            ],
          ),
        )

      ),
    );
  }



}
