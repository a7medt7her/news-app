import 'package:flutter/material.dart';

class AppbarText extends StatelessWidget {
  const AppbarText({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(
              color: Colors.white,
              fontSize: Theme.of(context).appBarTheme.titleTextStyle?.fontSize,
              fontWeight: Theme.of(
                context,
              ).appBarTheme.titleTextStyle?.fontWeight,
            ),
          ),

          TextSpan(
            text: text2,
            style: TextStyle(
              color: const Color.fromARGB(255, 229, 131, 3),
              fontSize: Theme.of(context).appBarTheme.titleTextStyle?.fontSize,
              fontWeight: Theme.of(
                context,
              ).appBarTheme.titleTextStyle?.fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
