import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
/**
 * 首页 swiper
 *
 * add by wuxw
 * date: 2019/3/3
 **/

class IndexSwiper extends StatefulWidget {
  @override
  _IndexSwiperState createState() => _IndexSwiperState();
}

class _IndexSwiperState extends State<IndexSwiper> {

  List<Image> swipers = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    swipers.add(Image.asset("images/index_swiper/swiper_01.jpg",fit: BoxFit.fill,));
    swipers.add(Image.asset("images/index_swiper/swiper_02.jpg",fit: BoxFit.fill));
    swipers.add(Image.asset("images/index_swiper/swiper_03.jpg",fit: BoxFit.fill));
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
          itemBuilder: _swiperBuilder,
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
              )),
          //control: new SwiperControl(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) => print('点击了第$index个'),
        )
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return swipers[index];
  }
}

