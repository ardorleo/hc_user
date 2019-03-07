import 'package:flutter/material.dart';

import '../../model/IndexMessageEntity.dart';

/**
 *
 * 首页 消息框
 * add by wuxw
 * date: 2019/3/7
 **/

class IndexMessage extends StatefulWidget {
  @override
  _IndexMessageState createState() => _IndexMessageState();
}

class _IndexMessageState extends State<IndexMessage> {

  List<IndexMessageEntity> message = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    IndexMessageEntity indexMessageEntity = null;

    indexMessageEntity = new IndexMessageEntity("停电通知，16点至17点停电", "3小时前");
    message.add(indexMessageEntity);
    indexMessageEntity = new IndexMessageEntity("停水通知，16点至17点停水", "19小时前");
    message.add(indexMessageEntity);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
      color: Colors.white,
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
              Icon(Icons.volume_down,size: 40.0, color: Colors.redAccent,),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _createMessageWidget()
                ),
              ),

              ]
            ),

          ),

           Icon(Icons.keyboard_arrow_right,
           size: 30,
           color: Colors.black26,
           )
        ],
      ),
    );
  }


  List<Widget> _createMessageWidget(){
    return List<Widget>.generate(message.length, (int index)=>_buildMessageWidget(index));
  }

  Widget _buildMessageWidget(int index){
     return Row(
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
         Text(message[index].message,
           style: TextStyle(
               fontSize: 16.0
           ),),
         Text('  '+message[index].dateDesc,style: TextStyle(
           color: Colors.black26,
         ),)
       ],
     );
  }
}

