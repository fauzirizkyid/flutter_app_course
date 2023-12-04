import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/theme/core/colors/colors_const.dart';

class RequiredText extends StatelessWidget {
  const RequiredText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        children: const <TextSpan>[
          TextSpan(
            text: '*',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorConstant.red,
            ),
          ),
        ],
      ),
    );
  }
}
