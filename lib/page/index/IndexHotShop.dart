import 'package:flutter/material.dart';
import '../../model/IndexHotShopEntity.dart';
/**
 *
 * 热门商品
 * add by wuxw
 * date: 2019/3/5
 **/

class IndexHotShop extends StatefulWidget {
  @override
  _IndexHotShopState createState() => _IndexHotShopState();
}

class _IndexHotShopState extends State<IndexHotShop> {


  List<IndexHotShopEntity> hotShops = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadHotShops();
  }

  /**
   * 加载热门商品
   */
  void _loadHotShops(){
    
    IndexHotShopEntity indexHotShopEntity = null;
    
    indexHotShopEntity = new IndexHotShopEntity("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551895018291&di=58cff86a31915b6755d21afdbd04a990&imgtype=0&src=http%3A%2F%2Fmmbiz.qpic.cn%2Fmmbiz_jpg%2Fiay8jPeJeEVHAVaM6k10R018T6h5ib96eJsc1bCM34N0t7A4JI68nfuY2Vm3ascjXC9GcN8y1tZWLPt1nkSoNBCg%2F640%3Fwx_fmt%3Djpeg",
        "小炒肉,学文家小炒肉独家冠名商品", 36.00, "1001", "学文炒菜馆",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551809237980&di=7a7ad5a8f829e602f68d8a4e577d426b&imgtype=0&src=http%3A%2F%2Fwww.jituwang.com%2Fuploads%2Fallimg%2F150110%2F259502-15011022421557.jpg"
    );
    hotShops.add(indexHotShopEntity);

    indexHotShopEntity = new IndexHotShopEntity("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1551798999&di=f1c9f31df83d499b1428c3fb1af223ce&src=http://pic34.photophoto.cn/20150106/0042040298227956_b.jpg",
        "小炒肉", 36.00, "1001", "学文炒菜馆",
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551809237980&di=7a7ad5a8f829e602f68d8a4e577d426b&imgtype=0&src=http%3A%2F%2Fwww.jituwang.com%2Fuploads%2Fallimg%2F150110%2F259502-15011022421557.jpg"
    );
    hotShops.add(indexHotShopEntity);

    indexHotShopEntity = new IndexHotShopEntity("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1551798999&di=f1c9f31df83d499b1428c3fb1af223ce&src=http://pic34.photophoto.cn/20150106/0042040298227956_b.jpg",
        "小炒肉", 36.00, "1001", "学文炒菜馆",
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551809237980&di=7a7ad5a8f829e602f68d8a4e577d426b&imgtype=0&src=http%3A%2F%2Fwww.jituwang.com%2Fuploads%2Fallimg%2F150110%2F259502-15011022421557.jpg"
    );
    hotShops.add(indexHotShopEntity);

    indexHotShopEntity = new IndexHotShopEntity("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1551798999&di=f1c9f31df83d499b1428c3fb1af223ce&src=http://pic34.photophoto.cn/20150106/0042040298227956_b.jpg",
        "小炒肉", 36.00, "1001", "学文炒菜馆",
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551809237980&di=7a7ad5a8f829e602f68d8a4e577d426b&imgtype=0&src=http%3A%2F%2Fwww.jituwang.com%2Fuploads%2Fallimg%2F150110%2F259502-15011022421557.jpg"
    );
    hotShops.add(indexHotShopEntity);

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
      child: Column(
        children: <Widget>[
          Text('热门商品',style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          _hotShops()
        ],

      ),
    );
  }

  Widget _hotShops(){
    return GridView.count(crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 4/5,
      children: _buildGridShopList(),
    );
  }

  /**
   * 构建Grid数据
   */
  List<Container> _buildGridShopList(){
    return List<Container>.generate(hotShops.length, (int index)=> _buildGridContainer(index));
  }


  Container _buildGridContainer(int index){
    return Container(
        //alignment: Alignment.center,
        color:  Colors.white,
        child: Container(
          height: 150.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(hotShops[index].shopImage,
                    width: double.infinity,height: 150,),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                      child:Text(hotShops[index].shopName,style: TextStyle(
                          fontSize: 14.0,
                        ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('￥'+hotShops[index].shopPrice.toString(),
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red
                        ),
                      ),
                      new ClipOval(
                        child: Image.network(
                          hotShops[index].storeImage,
                          fit: BoxFit.fitWidth,
                          width: 40.0,
                          height: 40.0,
                        ),
                      ),
                    ]
                ),
              )

                ],
              )
          ),
    );
  }
}

