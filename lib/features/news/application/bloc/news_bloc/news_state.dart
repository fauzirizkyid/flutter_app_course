part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    required bool isLoading,
    required Option<Either<NewsFailures, List<PopularArticlesModel>>>
        getArticlesFailureOrSuccess,
  }) = _NewsState;

  factory NewsState.initial() => NewsState(
        isLoading: false,
        getArticlesFailureOrSuccess: none(),
      );
}
