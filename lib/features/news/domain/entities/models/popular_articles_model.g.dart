// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_articles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularArticlesModelImpl _$$PopularArticlesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularArticlesModelImpl(
      uri: json['uri'] as String,
      url: json['url'] as String,
      id: json['id'] as int,
      assetId: json['asset_id'] as int,
      publishedDate: DateTime.parse(json['published_date'] as String),
      byline: json['byline'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$PopularArticlesModelImplToJson(
        _$PopularArticlesModelImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'asset_id': instance.assetId,
      'published_date': instance.publishedDate.toIso8601String(),
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
    };
