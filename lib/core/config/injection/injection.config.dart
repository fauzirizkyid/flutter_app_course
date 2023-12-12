// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_app/core/applications/app_bloc/app_bloc.dart' as _i7;
import 'package:flutter_app/core/config/env/env.dart' as _i4;
import 'package:flutter_app/core/config/routes/router.dart' as _i6;
import 'package:flutter_app/core/config/utils/register_module.dart' as _i14;
import 'package:flutter_app/core/domain/storages/custom_storage.dart' as _i3;
import 'package:flutter_app/core/infrastructure/core/api_helper.dart' as _i9;
import 'package:flutter_app/features/news/application/bloc/news_bloc/news_bloc.dart'
    as _i13;
import 'package:flutter_app/features/news/domain/repository/i_news_repository.dart'
    as _i11;
import 'package:flutter_app/features/news/infrastructure/data_sources/article_data_source.dart'
    as _i10;
import 'package:flutter_app/features/news/infrastructure/repository/news_repository.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

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
    gh.factory<_i3.CustomStorage>(() => _i3.CustomStorage());
    gh.factory<_i4.Env>(() => _i4.Env());
    gh.lazySingleton<_i5.Logger>(() => registerModule.logger);
    gh.singleton<_i6.RootRouter>(registerModule.appRouter);
    gh.factory<_i7.AppBloc>(() => _i7.AppBloc(gh<_i3.CustomStorage>()));
    gh.lazySingleton<_i8.Dio>(() => registerModule.dio(gh<_i4.Env>()));
    gh.lazySingleton<_i9.ApiHelper>(() => _i9.ApiHelper(gh<_i8.Dio>()));
    gh.factory<_i10.ArticleDataSource>(
        () => _i10.ArticleDataSource(gh<_i9.ApiHelper>()));
    gh.lazySingleton<_i11.INewsRepository>(
        () => _i12.NewsRepository(gh<_i10.ArticleDataSource>()));
    gh.factory<_i13.NewsBloc>(() => _i13.NewsBloc(gh<_i11.INewsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
