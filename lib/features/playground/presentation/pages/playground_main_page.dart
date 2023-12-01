import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/routes/router.gr.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';
import 'package:flutter_app/core/utils/ui_helper.dart';
import 'package:flutter_app/features/playground/presentation/widgets/playground_menus_widget.dart';

@RoutePage()
class PlaygroundMainPage extends StatelessWidget {
  const PlaygroundMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: UIHelper.padding(all: UIHelper.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Section',
                style: myTextTheme.titleLarge,
              ),
              UIHelper.verticalSpace(10),
              PlaygroundMenus(
                title: 'Dummy UI',
                description:
                    'Practice flutter UI and get familiar with UI Widgets',
                onTap: () {
                  context.pushRoute(const DummyUIRoute());
                },
              ),
              PlaygroundMenus(
                title: 'Simple Calculator',
                description:
                    'Creating calculator app that consists add, divide, substract, multiply function',
                onTap: () {},
              ),
              PlaygroundMenus(
                title: 'Input Validation',
                description: 'Play around with email input & password input',
                onTap: () {},
              ),
              PlaygroundMenus(
                title: 'Switch App',
                description:
                    'Goes to main home page and choose between playground or Pixels ',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
