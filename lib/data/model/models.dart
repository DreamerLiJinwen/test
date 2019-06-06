import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class Keyword {
  String name;
  int frequency;

  Keyword(this.name,this.frequency);

  factory Keyword.fromJson(Map<String, dynamic> json) =>
      _$KeywordFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordToJson(this);
  @override
  String toString() {
    return 'Keyword{name:$name,frequency:$frequency}';
  }
  // Keyword.fromJson(Map<String,dynamic> json)
  //   : name = json['name'],
  //     frequency = json['frequency'];

  // Map<String,dynamic> toJson() => {
  //   'name':name,
  //   'frequency':frequency,
  // };

  // @override
  // String toString() {
  //   // TODO: implement toString
  //   return "{\"name\":\"$name\",\"frequency\":$frequency}";
  // }
}

@JsonSerializable()
class Expert {
  String id;
  String name;

  Expert(this.id,this.name);

  // Expert.fromJson(Map<String,dynamic> json)
  //   : id = json['name'],
  //     name = json['name'];
    
  // Map<String,dynamic> toJson() => {
  //   'id':id,
  //   'name':name,
  // };

  factory Expert.fromJson(Map<String, dynamic> json) =>
      _$ExpertFromJson(json);

  Map<String, dynamic> toJson() => _$ExpertToJson(this);
  @override
  String toString() {
    // TODO: implement toString
    return 'Expert{name:$name,id:$id}';
  }
}

@JsonSerializable()
class Doctor {
  String id;
  String name;
  Doctor(this.id,this.name);

  // Doctor.fromJson(Map<String,dynamic> json)
  //   : id = json['name'],
  //     name = json['name'];
    
  // Map<String,dynamic> toJson() => {
  //   'id':id,
  //   'name':name,
  // };
  factory Doctor.fromJson(Map<String, dynamic> json) =>
      _$DoctorFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorToJson(this);
  @override
  String toString() {
    // TODO: implement toString
    return 'Doctor{name:$name,id:$id}';
  }
}

@JsonSerializable()
class Tags {
  String category;
  String categoryTag;
  String hospotal;
  Doctor doctor;
  List<Expert> experts;
  List<String> surgerys;
  List<Keyword> keywords;

  Tags(this.category,this.categoryTag,this.hospotal,this.doctor,this.experts,this.surgerys,this.keywords);

  factory Tags.fromJson(Map<String, dynamic> json) =>
      _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}

@JsonSerializable()
class Video {
  String id;
  String number;
  String name;
  String path;
  String preview;
  int taskFlag;
  int status;
  String duration;
  Tags tags;

  Video(this.id,this.number,this.name,this.path,this.preview,this.taskFlag,this.status,this.duration,this.tags);

  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return 'Video{id:$id,number:$number,name:$name,path:$path,preview:$preview,taskFlag:$taskFlag,status:$status,duration:$duration,tags:$tags}';
  }
}

@JsonSerializable()
class VideoList {
  List<Video> contents;
  VideoList(this.contents);

  factory VideoList.fromJson(Map<String,dynamic> json) => _$VideoListFromJson(json);
  Map<String, dynamic> toJson() => _$VideoListToJson(this);

}