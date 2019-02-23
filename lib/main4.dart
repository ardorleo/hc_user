import 'package:flutter/material.dart';
import 'MyListView.dart';

void main() =>
    runApp(new myApp());

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "GridView",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("GridView"),
            ),
            body:new GridView.count(
                crossAxisCount: 4,
              padding: const EdgeInsets.all(2.0),
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7,

              children: <Widget>[
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
                new Image.network("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.jpg"),
              ],
            )
            ));
  }
}
