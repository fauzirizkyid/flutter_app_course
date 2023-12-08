import 'package:dartz/dartz.dart';
import 'package:flutter_app/features/news/domain/entities/models/popular_articles_model.dart';
import 'package:flutter_app/features/news/domain/usecases/failures/news_failures.dart';

abstract class INewsRepository {
  Future<Either<NewsFailures, List<PopularArticlesModel>>> getNews();
}
