part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required Brightness brightness,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        brightness: Brightness.light,
      );
}
