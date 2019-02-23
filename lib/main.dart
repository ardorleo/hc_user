import 'package:flutter/material.dart';

import 'page/SplashScreen.dart';
import 'page/HomeScreen.dart';


/**
 * hc 用户版app 入口
 */
void main() => runApp(new HcApp());

class HcApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'hc',
        routes: <String,WidgetBuilder>{//配置路径
          '/Home':(BuildContext context)  => new HomeScreen(),
        },
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: new SplashScreen()
    );
  }
}
