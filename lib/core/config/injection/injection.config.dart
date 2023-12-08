// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_app/core/config/env/env.dart' as _i3;
import 'package:flutter_app/core/config/routes/router.dart' as _i5;
import 'package:flutter_app/core/config/utils/register_module.dart' as _i12;
import 'package:flutter_app/core/infrastructure/core/api_helper.dart' as _i7;
import 'package:flutter_app/features/news/application/bloc/news_bloc/news_bloc.dart'
    as _i11;
import 'package:flutter_app/features/news/domain/repository/i_news_repository.dart'
    as _i9;
import 'package:flutter_app/features/news/infrastructure/data_sources/article_data_source.dart'
    as _i8;
import 'package:flutter_app/features/news/infrastructure/repository/news_repository.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Env>(() => _i3.Env());
    gh.lazySingleton<_i4.Logger>(() => registerModule.logger);
    gh.singleton<_i5.RootRouter>(registerModule.appRouter);
    gh.lazySingleton<_i6.Dio>(() => registerModule.dio(gh<_i3.Env>()));
    gh.lazySingleton<_i7.ApiHelper>(() => _i7.ApiHelper(gh<_i6.Dio>()));
    gh.factory<_i8.ArticleDataSource>(
        () => _i8.ArticleDataSource(gh<_i7.ApiHelper>()));
    gh.lazySingleton<_i9.INewsRepository>(
        () => _i10.NewsRepository(gh<_i8.ArticleDataSource>()));
    gh.factory<_i11.NewsBloc>(() => _i11.NewsBloc(gh<_i9.INewsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
