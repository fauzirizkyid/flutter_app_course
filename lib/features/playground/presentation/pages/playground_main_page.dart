import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';
import 'package:flutter_app/core/config/utils/ui_helper.dart';
import 'package:flutter_app/features/playground/domain/usecases/playground_list_menu.dart';

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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: playgroundMenu(context).length,
                itemBuilder: (context, index) {
                  var widget = playgroundMenu(context);
                  return widget[index];
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
