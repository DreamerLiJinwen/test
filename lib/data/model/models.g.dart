// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Keyword _$KeywordFromJson(Map<String, dynamic> json) {
  return Keyword(json['name'] as String, json['frequency'] as int);
}

Map<String, dynamic> _$KeywordToJson(Keyword instance) =>
    <String, dynamic>{'name': instance.name, 'frequency': instance.frequency};

Expert _$ExpertFromJson(Map<String, dynamic> json) {
  return Expert(json['id'] as String, json['name'] as String);
}

Map<String, dynamic> _$ExpertToJson(Expert instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return Doctor(json['id'] as String, json['name'] as String);
}

Map<String, dynamic> _$DoctorToJson(Doctor instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(
      json['category'] as String,
      json['categoryTag'] as String,
      json['hospotal'] as String,
      json['doctor'] == null
          ? null
          : Doctor.fromJson(json['doctor'] as Map<String, dynamic>),
      (json['experts'] as List)
          ?.map((e) =>
              e == null ? null : Expert.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['surgerys'] as List)?.map((e) => e as String)?.toList(),
      (json['keywords'] as List)
          ?.map((e) =>
              e == null ? null : Keyword.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'category': instance.category,
      'categoryTag': instance.categoryTag,
      'hospotal': instance.hospotal,
      'doctor': instance.doctor,
      'experts': instance.experts,
      'surgerys': instance.surgerys,
      'keywords': instance.keywords
    };

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
      json['id'] as String,
      json['number'] as String,
      json['name'] as String,
      json['path'] as String,
      json['preview'] as String,
      json['taskFlag'] as int,
      json['status'] as int,
      json['duration'] as String,
      json['tags'] == null
          ? null
          : Tags.fromJson(json['tags'] as Map<String, dynamic>));
}

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'path': instance.path,
      'preview': instance.preview,
      'taskFlag': instance.taskFlag,
      'status': instance.status,
      'duration': instance.duration,
      'tags': instance.tags
    };

VideoList _$VideoListFromJson(Map<String, dynamic> json) {
  return VideoList((json['contents'] as List)
      ?.map((e) => e == null ? null : Video.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$VideoListToJson(VideoList instance) =>
    <String, dynamic>{'contents': instance.contents};
