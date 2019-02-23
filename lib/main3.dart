import 'package:flutter/material.dart';
import 'MyListView.dart';

void main() =>
    runApp(new myApp(items: new List<String>.generate(1000, (i) => "列表 ${i}")));

class myApp extends StatelessWidget {
  final List<String> items;

  myApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "ListView",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("ListView"),
            ),
            body: new ListView.builder(
              itemCount: this.items.length,
              itemBuilder: (context,index){
                return new ListTile(
                  title: new Text('${this.items[index]}'),
                );
              },
            )));
  }
}
