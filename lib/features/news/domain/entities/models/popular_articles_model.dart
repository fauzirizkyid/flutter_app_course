import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_articles_model.freezed.dart';
part 'popular_articles_model.g.dart';

@freezed
class PopularArticlesModel with _$PopularArticlesModel {
  const factory PopularArticlesModel({
    required String uri,
    required String url,
    required int id,
    required int assetId,
    required DateTime publishedDate,
    required String byline,
    required String type,
    required String title,
  }) = _PopularArticlesModel;

  factory PopularArticlesModel.fromJson(Map<String, dynamic> json) =>
      _$PopularArticlesModelFromJson(json);
}
