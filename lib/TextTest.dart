//import 'package:flutter/ma';
/**
 * 网络请求,展示列表
 */
import 'package:flutter/material.dart';
import 'package:flutter_app_aug/model/home_banner_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(HomePage()); //作为启动项得必备
//添加两个布局,可以使用
//注意要在最外层设置一个materialApp
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new HH(),
    );
  }
}

class HH extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HH> {
  List<BannerData> bannerList = [];

  @override
  void initState() {
    super.initState();
//    _loadBannerData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ADBanner'),
      ),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "https://img2018.cnblogs.com/news/34358/201908/34358-20190805164011484-777042009.png",
            fit: BoxFit.fill,
          );
        },
        itemCount: 2,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}

void _loadBannerData() {
//  HomeBannerDao.fetch().then((model) {
//    setState(() {
//      bannerList = model.data;
//    });
//  }).catchError((error) {
//    // ignore: unnecessary_statements
////      Toast.show(error.toString(), context,
////          duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
//  });
}
