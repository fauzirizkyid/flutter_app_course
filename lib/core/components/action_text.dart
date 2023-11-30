import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';

class ActionText extends StatelessWidget {
  const ActionText({
    super.key,
    required this.label,
    this.description,
    this.flex,
    required this.onTap,
  });

  final String label;
  final String? description;
  final int? flex;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: myTextTheme.titleLarge,
                  ),
                  Text(description ?? 'Default Description'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                child: const Icon(Icons.chevron_right),
              ),
            )
          ],
        ),
      ),
    );
  }
}
