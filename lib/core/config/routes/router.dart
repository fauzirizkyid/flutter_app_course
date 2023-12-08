import 'package:auto_route/auto_route.dart';
import 'package:flutter_app/core/config/routes/router.gr.dart';

@AutoRouterConfig(
  generateForDir: ['lib/features'],
  replaceInRouteName: "Page,Route",
)
class RootRouter extends $RootRouter implements AutoRouteGuard {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/main',
          page: NewsRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/dummy-ui',
          page: DummyUIRoute.page,
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next();
  }
}
