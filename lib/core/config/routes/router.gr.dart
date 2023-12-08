// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter_app/features/news/presentation/pages/news_page.dart'
    as _i2;
import 'package:flutter_app/features/playground/presentation/pages/dummy_ui/dummy_ui_page.dart'
    as _i1;
import 'package:flutter_app/features/playground/presentation/pages/playground_main_page.dart'
    as _i3;

abstract class $RootRouter extends _i4.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DummyUIRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DummyUIPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NewsPage(),
      );
    },
    PlaygroundMainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PlaygroundMainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DummyUIPage]
class DummyUIRoute extends _i4.PageRouteInfo<void> {
  const DummyUIRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewsPage]
class NewsRoute extends _i4.PageRouteInfo<void> {
  const NewsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PlaygroundMainPage]
class PlaygroundMainRoute extends _i4.PageRouteInfo<void> {
  const PlaygroundMainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PlaygroundMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundMainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
