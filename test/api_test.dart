import 'package:cdmsapp/data/model/models.dart' as models;
import 'package:cdmsapp/data/net/request_api.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('api test', () {
    test('Keyword to json', () async {
      RequestAPI api = new RequestAPI();
      models.VideoList list = await api.getRecommend();
      for (var video in list.contents) {
        print(video);
      }
    });
  });
}
