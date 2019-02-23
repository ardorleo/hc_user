import 'package:flutter/material.dart';
import 'dart:async';
import 'HomeScreen.dart';


/**
 * 广告页面
 */
class SplashScreen extends StatefulWidget{

  SplashScreen({Key key}):super(key:key);
  @override
  _SplashScreen createState()=> new _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  bool isStartHomePage = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      //onTap: goToHomePage,//设置页面点击事件
      child: Image.asset("images/splash.jpeg",fit: BoxFit.cover,),//此处fit: BoxFit.cover用于拉伸图片,使图片铺满全屏
    );
  }

  //页面初始化状态的方法
  @override
  void initState() {
    super.initState();
    //开启倒计时
    countDown();
  }

  void countDown() {
    //设置倒计时三秒后执行跳转方法
    var duration = new Duration(seconds: 3);
    new Future.delayed(duration, goToHomePage);
  }

  void goToHomePage(){
    //如果页面还未跳转过则跳转页面
    if(!isStartHomePage){
      //跳转主页 且销毁当前页面
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context)=>new HomeScreen()), (Route<dynamic> rout)=>false);
      isStartHomePage=true;
    }
  }
}