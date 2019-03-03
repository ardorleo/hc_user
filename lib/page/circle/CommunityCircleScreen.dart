import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/**
 *
 * 小区圈
 * add by wuxw
 * date: 2019/2/24
 **/
class CommunityCircleScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _CommunityCircleScreenState();
}

class _CommunityCircleScreenState extends State<CommunityCircleScreen> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('圈子'),
          actions: <Widget>[
            new Container()
          ],
          centerTitle: true,
        ),
        body: new Center(
          child: CupertinoAlertDialog(
            title: Text("提示"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("是否要删除？"),
                  Text("删除后无法恢复！")
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("确认"),
                onPressed: (){},
              ),
              CupertinoDialogAction(
                child: Text("取消"),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }

}