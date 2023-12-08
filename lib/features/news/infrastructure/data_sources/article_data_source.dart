import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_app/core/config/constants/api_path_constant.dart';
import 'package:flutter_app/core/config/constants/string_constant.dart';
import 'package:flutter_app/core/infrastructure/core/api_helper.dart';
import 'package:flutter_app/features/news/domain/entities/models/popular_articles_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class ArticleDataSource {
  final ApiHelper _helper;

  ArticleDataSource(this._helper);

  Future<List<PopularArticlesModel>> getNews() async {
    // final response = await _helper.get(
    //   path: ApiPathConstant.exploreArticles,
    // );
    
    final dio = Dio();

    var path = 'https://api.nytimes.com/svc${ApiPathConstant.mostPopular}';

    final response = await dio.get(
      path,
      queryParameters: {'api-key': StringConstants.apiKey},
    );

    final rawList = response.data['results'] as List;
    final articles = IList<PopularArticlesModel>.fromJson(
      rawList,
      (val) => PopularArticlesModel.fromJson(val as Map<String, dynamic>),
    );

    return articles.toList();
  }
}
