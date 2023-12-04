import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/theme/core/colors/colors_const.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';
import 'package:flutter_app/core/config/utils/ui_helper.dart';
import 'package:flutter_app/features/playground/presentation/widgets/playground_menus_widget.dart';

@RoutePage()
class DummyUIPage extends StatelessWidget {
  const DummyUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dummy UI',
          style: myTextTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        padding: UIHelper.padding(all: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlaygroundMenus(
              title: 'Next',
              description: 'Tab Bar, GridView, ListView',
              onTap: () {},
              isDividerActive: false,
              padding: 5,
            ),
            UIHelper.verticalSpace(10),
            Text(
              'CONTAINER AND TEXT',
              style: myTextTheme.titleSmall!.apply(
                color: ColorConstant.green,
              ),
            ),
            UIHelper.verticalSpace(10),
            Container(
              padding: UIHelper.padding(all: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ColorConstant.grey,
                ),
                borderRadius: UIHelper.borderRadiusCircular(all: 10),
              ),
              child: SizedBox(
                height: 85,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: UIHelper.borderRadiusCircular(all: 10),
                      child: Image.network(
                        'https://picsum.photos/200',
                        width: 85,
                      ),
                    ),
                    UIHelper.horizontalSpace(20),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'How can I be Flutter Developer Expert?',
                            style: myTextTheme.titleMedium,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jill Lepore • 23 May 23',
                                style: myTextTheme.bodySmall,
                              ),
                              const Icon(
                                Icons.star,
                                color: ColorConstant.primary,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
