// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArticles value) getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetArticles value)? getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArticles value)? getArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArticlesImplCopyWith<$Res> {
  factory _$$GetArticlesImplCopyWith(
          _$GetArticlesImpl value, $Res Function(_$GetArticlesImpl) then) =
      __$$GetArticlesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArticlesImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$GetArticlesImpl>
    implements _$$GetArticlesImplCopyWith<$Res> {
  __$$GetArticlesImplCopyWithImpl(
      _$GetArticlesImpl _value, $Res Function(_$GetArticlesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArticlesImpl implements _GetArticles {
  const _$GetArticlesImpl();

  @override
  String toString() {
    return 'NewsEvent.getArticles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetArticlesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticles,
  }) {
    return getArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticles,
  }) {
    return getArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticles,
    required TResult orElse(),
  }) {
    if (getArticles != null) {
      return getArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArticles value) getArticles,
  }) {
    return getArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetArticles value)? getArticles,
  }) {
    return getArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArticles value)? getArticles,
    required TResult orElse(),
  }) {
    if (getArticles != null) {
      return getArticles(this);
    }
    return orElse();
  }
}

abstract class _GetArticles implements NewsEvent {
  const factory _GetArticles() = _$GetArticlesImpl;
}

/// @nodoc
mixin _$NewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<NewsFailures, List<PopularArticlesModel>>>
      get getArticlesFailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<NewsFailures, List<PopularArticlesModel>>>
          getArticlesFailureOrSuccess});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? getArticlesFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getArticlesFailureOrSuccess: null == getArticlesFailureOrSuccess
          ? _value.getArticlesFailureOrSuccess
          : getArticlesFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NewsFailures, List<PopularArticlesModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsStateImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$NewsStateImplCopyWith(
          _$NewsStateImpl value, $Res Function(_$NewsStateImpl) then) =
      __$$NewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<NewsFailures, List<PopularArticlesModel>>>
          getArticlesFailureOrSuccess});
}

/// @nodoc
class __$$NewsStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsStateImpl>
    implements _$$NewsStateImplCopyWith<$Res> {
  __$$NewsStateImplCopyWithImpl(
      _$NewsStateImpl _value, $Res Function(_$NewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? getArticlesFailureOrSuccess = null,
  }) {
    return _then(_$NewsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getArticlesFailureOrSuccess: null == getArticlesFailureOrSuccess
          ? _value.getArticlesFailureOrSuccess
          : getArticlesFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NewsFailures, List<PopularArticlesModel>>>,
    ));
  }
}

/// @nodoc

class _$NewsStateImpl implements _NewsState {
  const _$NewsStateImpl(
      {required this.isLoading, required this.getArticlesFailureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Option<Either<NewsFailures, List<PopularArticlesModel>>>
      getArticlesFailureOrSuccess;

  @override
  String toString() {
    return 'NewsState(isLoading: $isLoading, getArticlesFailureOrSuccess: $getArticlesFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.getArticlesFailureOrSuccess,
                    getArticlesFailureOrSuccess) ||
                other.getArticlesFailureOrSuccess ==
                    getArticlesFailureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, getArticlesFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      __$$NewsStateImplCopyWithImpl<_$NewsStateImpl>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
      {required final bool isLoading,
      required final Option<Either<NewsFailures, List<PopularArticlesModel>>>
          getArticlesFailureOrSuccess}) = _$NewsStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<NewsFailures, List<PopularArticlesModel>>>
      get getArticlesFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
