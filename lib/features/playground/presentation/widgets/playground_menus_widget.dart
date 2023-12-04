import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/theme/core/colors/colors_const.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';
import 'package:flutter_app/core/config/utils/ui_helper.dart';

class PlaygroundMenus extends StatelessWidget {
  const PlaygroundMenus({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
    this.isDividerActive = true,
    this.padding = 20,
  });

  final String title;
  final String description;
  final VoidCallback onTap;
  final bool isDividerActive;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: UIHelper.padding(vertical: padding),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: myTextTheme.titleLarge!.apply(
                          color: ColorConstant.primary,
                        ),
                      ),
                      Text(
                        description,
                        style: myTextTheme.bodyMedium!.apply(
                          color: ColorConstant.darkGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.chevron_right,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        if (isDividerActive) UIHelper.divider(height: 0),
      ],
    );
  }
}
