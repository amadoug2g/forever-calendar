import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/styles/fonts.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: kTextTheme.displayLarge?.copyWith(fontWeight: FontWeight.w300),
        children: [
          const TextSpan(
            text: "The ",
          ),
          TextSpan(
            text: "Forever",
            style: kTextTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(
            text: " Calendar",
          ),
        ],
      ),
    );
  }
}
