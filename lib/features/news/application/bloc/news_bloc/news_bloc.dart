import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app/features/news/domain/entities/models/popular_articles_model.dart';
import 'package:flutter_app/features/news/domain/repository/i_news_repository.dart';
import 'package:flutter_app/features/news/domain/usecases/failures/news_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final INewsRepository _iNewsRepository;

  NewsBloc(this._iNewsRepository) : super(NewsState.initial()) {
    on<NewsEvent>(
      (event, emit) async {
        await event.map(
          getArticles: (val) async {
            emit(state.copyWith(isLoading: true));

            final response = await _iNewsRepository.getNews();

            emit(
              state.copyWith(
                isLoading: false,
                getArticlesFailureOrSuccess: optionOf(response),
              ),
            );
          },
        );
      },
    );
  }
}
