import 'dart:convert';

import 'package:flutter_app_aug/http/Const.dart';
import 'package:flutter_app_aug/model/home_banner_model.dart';
import 'package:http/http.dart' as http;

class HomeBannerDao {
  static Future<HomeBannerModel> fetch() async { //异步执行
    var homeModel = await http.get(Const.HOME_BANNER_URL);
    if (homeModel?.statusCode == 200) {
      Utf8Decoder utf8decoder = new Utf8Decoder();
      var result = json.decode(utf8decoder.convert(homeModel.bodyBytes));
      var model = HomeBannerModel.fromJson(result);
      if (model.errorCode == 0) {
        return model;
      } else {
        throw new Exception('服务器异常');
      }
    } else {
      throw new Exception('网络错误');
    }
  }
}
