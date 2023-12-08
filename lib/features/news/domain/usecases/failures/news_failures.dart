import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failures.freezed.dart';

@freezed
class NewsFailures with _$NewsFailures {
  const factory NewsFailures.serverError({
    String? failedMessage,
  }) = _ServerError;
  const factory NewsFailures.dataNotFound() = _DataNotFound;
}
