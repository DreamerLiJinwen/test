import 'package:cdmsapp/data/api/apis.dart';
import 'package:cdmsapp/data/net/dio_util.dart';
import 'package:cdmsapp/data/model/models.dart';
import 'dart:convert';

class RequestAPI {
  static DioUtil dioUtil = new DioUtil();
  Future<VideoList> getRecommend() async {
    return await dioUtil.getDio().get(CDMSAPI.RECOMMEND).then((response) {
      // print("---------1-------");
      // print(response.headers);
      // print("-------2---------");
      // print(response.statusCode);
      // print("-------3---------");
      // print(response.toString());
      // print("-------4---------");
      // print(jsonMap.toString());
      Map<String, dynamic> jsonMap = json.decode(response.toString());
      return VideoList.fromJson(jsonMap);
      
    }).catchError((error) {
      print(error);
      return new VideoList(null);
    });
  }
}
