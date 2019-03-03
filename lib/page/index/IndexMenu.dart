import 'package:flutter/material.dart';
import '../../model/IndexMenuEntity.dart';

/**
 *
 * 首页功能菜单
 * add by wuxw
 * date: 2019/3/3
 **/
class IndexMenu extends StatefulWidget {
  @override
  _IndexMenuState createState() => _IndexMenuState();
}

class _IndexMenuState extends State<IndexMenu> {

  List<IndexMenuEntity> _menus = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addMenus();
  }

  /**
   * 添加 菜单信息
   */
  _addMenus(){
     IndexMenuEntity indexMenuEntity = null;
     indexMenuEntity = new IndexMenuEntity(
       "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=d56b4ba42d7d1ec8b5ec037a6e4a50c8&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F02%2F40y58PICn4x_1024.jpg"
     );
     _menus.add(indexMenuEntity);
     indexMenuEntity = new IndexMenuEntity(
       "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=e793890797cdb2e7c4c86ca21b5ba2b6&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F04%2F69Q58PIC2UE_1024.jpg"
     );
     _menus.add(indexMenuEntity);
     indexMenuEntity = new IndexMenuEntity(
       "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=d56b4ba42d7d1ec8b5ec037a6e4a50c8&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F02%2F40y58PICn4x_1024.jpg"
     );
     _menus.add(indexMenuEntity);
     indexMenuEntity = new IndexMenuEntity(
       "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=d56b4ba42d7d1ec8b5ec037a6e4a50c8&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F02%2F40y58PICn4x_1024.jpg"
     );
     _menus.add(indexMenuEntity);

     indexMenuEntity = new IndexMenuEntity(
         "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=d56b4ba42d7d1ec8b5ec037a6e4a50c8&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F02%2F40y58PICn4x_1024.jpg"
     );
     _menus.add(indexMenuEntity);
     indexMenuEntity = new IndexMenuEntity(
         "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=e793890797cdb2e7c4c86ca21b5ba2b6&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F04%2F69Q58PIC2UE_1024.jpg"
     );
     _menus.add(indexMenuEntity);
     indexMenuEntity = new IndexMenuEntity(
         "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=d56b4ba42d7d1ec8b5ec037a6e4a50c8&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F02%2F40y58PICn4x_1024.jpg"
     );
     _menus.add(indexMenuEntity);
     indexMenuEntity = new IndexMenuEntity(
         "视频","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551632907077&di=d56b4ba42d7d1ec8b5ec037a6e4a50c8&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F28%2F02%2F40y58PICn4x_1024.jpg"
     );
     _menus.add(indexMenuEntity);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      color: Colors.white,
      child: buildGrid()
    );
  }

  /**
   * 构建 GridView
   */
//  Widget buildGrid(){
//    double _maxCrossAxisExtent = MediaQuery.of(context).size.width /4.0;
//    return GridView.extent(
//      shrinkWrap: true,
//
//      maxCrossAxisExtent: _maxCrossAxisExtent,
//      padding: const EdgeInsets.all(5.0),
//      mainAxisSpacing: 0.0,
//      crossAxisSpacing: 0.0,
//      children: _buildGridTitleList(),
//    );
//  }

  Widget buildGrid(){
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      //padding: const EdgeInsets.all(5.0),
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      children: _buildGridTitleList(),
    );
  }

  /**
   * 构建Grid数据
   */
  List<Container> _buildGridTitleList(){
    return List<Container>.generate(_menus.length, (int index)=> _buildGridContainer(index));
  }


  Container _buildGridContainer(int index){
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 70.0,
        child: Column(
        children: <Widget>[
          Image.network(_menus[index].menuImage,
          width: 50.0,height: 50,),
          Text(_menus[index].menuName)
        ],
      ),
      )
    );
  }
}
