import 'package:dartz/dartz.dart';
import 'package:flutter_app/features/news/domain/entities/models/popular_articles_model.dart';
import 'package:flutter_app/features/news/domain/repository/i_news_repository.dart';
import 'package:flutter_app/features/news/domain/usecases/failures/news_failures.dart';
import 'package:flutter_app/features/news/infrastructure/data_sources/article_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INewsRepository)
class NewsRepository implements INewsRepository {
  final ArticleDataSource _dataSource;

  NewsRepository(this._dataSource);

  @override
  Future<Either<NewsFailures, List<PopularArticlesModel>>> getNews() async {
    try {
      final response = await _dataSource.getNews();
      
      if (response.isNotEmpty) {
        return right(response);
      }

      return left(const NewsFailures.dataNotFound());
    } catch (e) {
      return left(const NewsFailures.serverError());
    }
  }
}
