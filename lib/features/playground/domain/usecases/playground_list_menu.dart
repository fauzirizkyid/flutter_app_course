import 'package:flutter_app/core/config/routes/router.gr.dart';
import 'package:flutter_app/features/playground/presentation/widgets/playground_menus_widget.dart';

playgroundMenu(context) {
  var listMenu = [
    PlaygroundMenus(
      title: 'Dummy UI',
      description: 'Practice flutter UI and get familiar with UI Widgets',
      onTap: () {
        context.pushRoute(const DummyUIRoute());
      },
    ),
    PlaygroundMenus(
      title: 'Dummy UI',
      description: 'Practice flutter UI and get familiar with UI Widgets',
      onTap: () {
        context.pushRoute(const DummyUIRoute());
      },
    ),
  ];

  return listMenu;
}
