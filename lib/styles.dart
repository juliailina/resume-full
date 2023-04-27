import 'package:flutter/material.dart';

class CustomColors {
//App colors
  static const Color backgroundColor = Color(0xFF1E1E1E);
  static const Color buttonColor = Color(0xFFA17D49);
  static const Color foregroundColor = Color(0xFF2D2D30);
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
//Text Colors
  static const Color beige = Color(0xFFD2D2D2); //text
  static const Color blue = Color(0xFF6FA7D6);
  static const Color gray = Color(0xFFA1A1A1); //comment
  static const Color green = Color(0xFF3AADA3);
  static const Color orange = Color(0xFFCE9178);
  static const Color pink = Color(0xFFEDA1B0);
  static const Color purple = Color(0xFFAB7BBD);
  static const Color yellow = Color(0xFFD3D3A4);
}

class CustomAppTheme {
  static ThemeData appTheme = ThemeData(
    canvasColor: CustomColors.backgroundColor,
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    fontFamily: 'JetBrainsMono',
    textTheme: const TextTheme(
      bodyMedium: TextStyle(),
    ).apply(
      bodyColor: CustomColors.beige,
    ),
  );
}

class CustomTextStyles {
  static const TextStyle body = TextStyle(
    fontSize: 14,
    height: 1.5,
  );
  static const TextStyle title = TextStyle(
    fontSize: 16,
    height: 1.5,
  );
  static const TextStyle hyperlink = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: CustomColors.green,
  );
  static const TextStyle heading = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle subheading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
  static const TextStyle button = TextStyle(
    fontSize: 18,
  );
}
