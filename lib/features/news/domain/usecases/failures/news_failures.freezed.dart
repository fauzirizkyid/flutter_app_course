// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedMessage) serverError,
    required TResult Function() dataNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? failedMessage)? serverError,
    TResult? Function()? dataNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedMessage)? serverError,
    TResult Function()? dataNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DataNotFound value) dataNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DataNotFound value)? dataNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DataNotFound value)? dataNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFailuresCopyWith<$Res> {
  factory $NewsFailuresCopyWith(
          NewsFailures value, $Res Function(NewsFailures) then) =
      _$NewsFailuresCopyWithImpl<$Res, NewsFailures>;
}

/// @nodoc
class _$NewsFailuresCopyWithImpl<$Res, $Val extends NewsFailures>
    implements $NewsFailuresCopyWith<$Res> {
  _$NewsFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? failedMessage});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$NewsFailuresCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedMessage = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      failedMessage: freezed == failedMessage
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({this.failedMessage});

  @override
  final String? failedMessage;

  @override
  String toString() {
    return 'NewsFailures.serverError(failedMessage: $failedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.failedMessage, failedMessage) ||
                other.failedMessage == failedMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedMessage) serverError,
    required TResult Function() dataNotFound,
  }) {
    return serverError(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? failedMessage)? serverError,
    TResult? Function()? dataNotFound,
  }) {
    return serverError?.call(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedMessage)? serverError,
    TResult Function()? dataNotFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DataNotFound value) dataNotFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DataNotFound value)? dataNotFound,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DataNotFound value)? dataNotFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements NewsFailures {
  const factory _ServerError({final String? failedMessage}) = _$ServerErrorImpl;

  String? get failedMessage;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataNotFoundImplCopyWith<$Res> {
  factory _$$DataNotFoundImplCopyWith(
          _$DataNotFoundImpl value, $Res Function(_$DataNotFoundImpl) then) =
      __$$DataNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataNotFoundImplCopyWithImpl<$Res>
    extends _$NewsFailuresCopyWithImpl<$Res, _$DataNotFoundImpl>
    implements _$$DataNotFoundImplCopyWith<$Res> {
  __$$DataNotFoundImplCopyWithImpl(
      _$DataNotFoundImpl _value, $Res Function(_$DataNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataNotFoundImpl implements _DataNotFound {
  const _$DataNotFoundImpl();

  @override
  String toString() {
    return 'NewsFailures.dataNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedMessage) serverError,
    required TResult Function() dataNotFound,
  }) {
    return dataNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? failedMessage)? serverError,
    TResult? Function()? dataNotFound,
  }) {
    return dataNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedMessage)? serverError,
    TResult Function()? dataNotFound,
    required TResult orElse(),
  }) {
    if (dataNotFound != null) {
      return dataNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DataNotFound value) dataNotFound,
  }) {
    return dataNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DataNotFound value)? dataNotFound,
  }) {
    return dataNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DataNotFound value)? dataNotFound,
    required TResult orElse(),
  }) {
    if (dataNotFound != null) {
      return dataNotFound(this);
    }
    return orElse();
  }
}

abstract class _DataNotFound implements NewsFailures {
  const factory _DataNotFound() = _$DataNotFoundImpl;
}
