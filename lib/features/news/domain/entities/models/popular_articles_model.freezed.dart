// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_articles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularArticlesModel _$PopularArticlesModelFromJson(Map<String, dynamic> json) {
  return _PopularArticlesModel.fromJson(json);
}

/// @nodoc
mixin _$PopularArticlesModel {
  String get uri => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get assetId => throw _privateConstructorUsedError;
  DateTime get publishedDate => throw _privateConstructorUsedError;
  String get byline => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularArticlesModelCopyWith<PopularArticlesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularArticlesModelCopyWith<$Res> {
  factory $PopularArticlesModelCopyWith(PopularArticlesModel value,
          $Res Function(PopularArticlesModel) then) =
      _$PopularArticlesModelCopyWithImpl<$Res, PopularArticlesModel>;
  @useResult
  $Res call(
      {String uri,
      String url,
      int id,
      int assetId,
      DateTime publishedDate,
      String byline,
      String type,
      String title});
}

/// @nodoc
class _$PopularArticlesModelCopyWithImpl<$Res,
        $Val extends PopularArticlesModel>
    implements $PopularArticlesModelCopyWith<$Res> {
  _$PopularArticlesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? url = null,
    Object? id = null,
    Object? assetId = null,
    Object? publishedDate = null,
    Object? byline = null,
    Object? type = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      byline: null == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularArticlesModelImplCopyWith<$Res>
    implements $PopularArticlesModelCopyWith<$Res> {
  factory _$$PopularArticlesModelImplCopyWith(_$PopularArticlesModelImpl value,
          $Res Function(_$PopularArticlesModelImpl) then) =
      __$$PopularArticlesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uri,
      String url,
      int id,
      int assetId,
      DateTime publishedDate,
      String byline,
      String type,
      String title});
}

/// @nodoc
class __$$PopularArticlesModelImplCopyWithImpl<$Res>
    extends _$PopularArticlesModelCopyWithImpl<$Res, _$PopularArticlesModelImpl>
    implements _$$PopularArticlesModelImplCopyWith<$Res> {
  __$$PopularArticlesModelImplCopyWithImpl(_$PopularArticlesModelImpl _value,
      $Res Function(_$PopularArticlesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? url = null,
    Object? id = null,
    Object? assetId = null,
    Object? publishedDate = null,
    Object? byline = null,
    Object? type = null,
    Object? title = null,
  }) {
    return _then(_$PopularArticlesModelImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      byline: null == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularArticlesModelImpl implements _PopularArticlesModel {
  const _$PopularArticlesModelImpl(
      {required this.uri,
      required this.url,
      required this.id,
      required this.assetId,
      required this.publishedDate,
      required this.byline,
      required this.type,
      required this.title});

  factory _$PopularArticlesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularArticlesModelImplFromJson(json);

  @override
  final String uri;
  @override
  final String url;
  @override
  final int id;
  @override
  final int assetId;
  @override
  final DateTime publishedDate;
  @override
  final String byline;
  @override
  final String type;
  @override
  final String title;

  @override
  String toString() {
    return 'PopularArticlesModel(uri: $uri, url: $url, id: $id, assetId: $assetId, publishedDate: $publishedDate, byline: $byline, type: $type, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularArticlesModelImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.byline, byline) || other.byline == byline) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uri, url, id, assetId, publishedDate, byline, type, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularArticlesModelImplCopyWith<_$PopularArticlesModelImpl>
      get copyWith =>
          __$$PopularArticlesModelImplCopyWithImpl<_$PopularArticlesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularArticlesModelImplToJson(
      this,
    );
  }
}

abstract class _PopularArticlesModel implements PopularArticlesModel {
  const factory _PopularArticlesModel(
      {required final String uri,
      required final String url,
      required final int id,
      required final int assetId,
      required final DateTime publishedDate,
      required final String byline,
      required final String type,
      required final String title}) = _$PopularArticlesModelImpl;

  factory _PopularArticlesModel.fromJson(Map<String, dynamic> json) =
      _$PopularArticlesModelImpl.fromJson;

  @override
  String get uri;
  @override
  String get url;
  @override
  int get id;
  @override
  int get assetId;
  @override
  DateTime get publishedDate;
  @override
  String get byline;
  @override
  String get type;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$PopularArticlesModelImplCopyWith<_$PopularArticlesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
