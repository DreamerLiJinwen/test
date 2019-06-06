import 'package:cdmsapp/data/model/models.dart' as models;
import 'dart:convert';
import 'package:cdmsapp/data/net/requestAPI.dart';

import 'package:flutter_test/flutter_test.dart';

void main(){
  // String JSON_Keyword = '''
  //   {
  //     "name" : "lijinwen",
  //     "frequency" : 1
  //   }
  // ''';

group('jsonparse test', () {
  test('Keyword to json', () {
      models.Keyword keyword = models.Keyword("lijinwen", 1);
      String jsonStr = json.encode(keyword.toJson());
      print(jsonStr);
      // expect(jsonStr,JSON_Keyword);
    });
  test('Expert to json', () {
      models.Expert expert = models.Expert("1","lijinwen");
      String jsonStr = json.encode(expert.toJson());
      print(jsonStr);
      // expect(jsonStr,JSON_Keyword);
    });
  test('Doctor to json', () {
      models.Doctor keyword = models.Doctor("1","lijinwen");
      String jsonStr = json.encode(keyword.toJson());
      print(jsonStr);
      // expect(jsonStr,JSON_Keyword);
    });
  test('Tags to json', () {
      models.Doctor doctor = models.Doctor("1","lijinwen");
      List<models.Expert> experts = new List<models.Expert>();
      List<String> surgerys = new List<String>();
      List<models.Keyword> keywords = new List<models.Keyword>();

      experts.add(models.Expert("1","lijinwen"));
      experts.add(models.Expert("2","lijinwen1"));
      experts.add(models.Expert("3","lijinwen3"));

      surgerys.add("surgerys1");
      surgerys.add("surgerys2");
      surgerys.add("surgerys3");

      keywords.add(models.Keyword("lijinwen", 1));
      keywords.add(models.Keyword("lijinwen1", 2));
      keywords.add(models.Keyword("lijinwen2", 3));

      models.Tags keyword = models.Tags("category", "categoryTag","hospotal",doctor,experts,surgerys,keywords);

      String jsonStr = json.encode(keyword.toJson());
      print(jsonStr);
      // expect(jsonStr,JSON_Keyword);
    });
  test('Video to json', () {
      models.Doctor doctor = models.Doctor("1","lijinwen");
      List<models.Expert> experts = new List<models.Expert>();
      List<String> surgerys = new List<String>();
      List<models.Keyword> keywords = new List<models.Keyword>();

      experts.add(models.Expert("1","lijinwen"));
      experts.add(models.Expert("2","lijinwen1"));
      experts.add(models.Expert("3","lijinwen3"));

      surgerys.add("surgerys1");
      surgerys.add("surgerys2");
      surgerys.add("surgerys3");

      keywords.add(models.Keyword("lijinwen", 1));
      keywords.add(models.Keyword("lijinwen1", 2));
      keywords.add(models.Keyword("lijinwen2", 3));

      models.Tags tags = models.Tags("category", "categoryTag","hospotal",doctor,experts,surgerys,keywords);
      models.Video video = models.Video("id", "number", 'name', "path", 'preview', 1, 1, "duration", tags);
      String jsonStr = json.encode(video.toJson());
      print(jsonStr);
      // expect(jsonStr,JSON_Keyword);
    });

    test('recommend api', () {
      RequestAPI api = new RequestAPI();
      api.getRecommend().then((list){
        String jsonStr = json.encode(list[1].toJson());
        print(jsonStr);
      });
      // expect(jsonStr,JSON_Keyword);
    });

  });
}