import 'package:flutter/material.dart';

/**
 *
 *
 * add by wuxw
 * date: 2019/3/3
 **/
class IndexAppBar {
  Widget createAppBar() {
    // TODO: implement createElement
    return AppBar(
      title: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.place,
              color: Colors.white,
              size: 20.0,
            ),
            Container(
                width: 80.0,
                child: Text(
                  '格兰小镇',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
            ),
        Expanded(child:
            Container(
                padding: EdgeInsets.fromLTRB(15.0,5.0,15.0,5.0),
                //width: 240.0,
                constraints: BoxConstraints(
                    minWidth: double.minPositive
                ),
                //alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('请输入商品名称',
                      style: TextStyle(
                        fontSize: 16.0,

                      ),
                    ),
                  ],
                )
            ),
        ),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.mail),
          color: Colors.white,
          tooltip: '我的消息',
          onPressed: null,
        ),
      ],
      //flexibleSpace: Text('d12321312'),
      //backgroundColor: Colors.red, //导航栏和状态栏的的颜色
      elevation: 0,
//      backgroundColor: Colors.transparent,
      //阴影的高度
//          bottom: PreferredSize(
//              child: Text('bottom'),
//              preferredSize: Size(30, 30)), // 在appbar下面显示的东西
      brightness: Brightness.dark,
      //控制状态栏的颜色，lignt 文字是灰色的，dark是白色的
//      iconTheme:
//      IconThemeData(color: Colors.yellow, opacity: 0.5, size: 30),
//      //icon的主题样式,默认的颜色是黑色的，不透明为1，size是24
      textTheme: TextTheme(),
      //这个主题的参数比较多,flutter定义了13种不同的字体样式
      centerTitle: true,
      //标题是否居中，默认为false
      toolbarOpacity: 1.0,
      //整个导航栏的不透明度
      bottomOpacity: 0,
      //bottom的不透明度
      titleSpacing: 10, //标题两边的空白区域,
    );
  }

}