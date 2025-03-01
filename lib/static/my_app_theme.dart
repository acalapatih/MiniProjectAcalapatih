import 'package:flutter/material.dart';
import 'package:mini_project_acalapatih/static/my_text_style.dart';

import 'app_color.dart';

class MyAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.light.color,
        primary: Colors.black,
        primaryFixed: Colors.black,
        primaryContainer: Colors.black,
        onPrimary: Colors.white,
        secondary: Colors.grey.shade200,
        onSecondary: const Color(0xFFF6F3F7),
        tertiary: Colors.white,
        onTertiary: const Color(0xFFEAEAEA),
        brightness: Brightness.light
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: _textTheme,
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.dark.color,
        primary: Colors.white,
        primaryFixed: const Color(0xFF989898),
        primaryContainer: const Color(0xFF2A2929),
        onPrimary: Colors.black,
        secondary: const Color(0xFF3D3D3D),
        onSecondary: const Color(0xFF121212),
        tertiary: const Color(0xFF1F1F1F),
        onTertiary: const Color(0xFF292929),
        brightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: _textTheme,
      useMaterial3: true,
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displaySmall: MyTextStyle.displaySmall,
      titleLarge: MyTextStyle.titleLarge,
      titleMedium: MyTextStyle.titleMedium,
      titleSmall: MyTextStyle.titleSmall,
      bodyLarge: MyTextStyle.bodyLarge,
      bodyMedium: MyTextStyle.bodyMedium,
      bodySmall: MyTextStyle.bodySmall,
      labelLarge: MyTextStyle.labelLarge,
      labelMedium: MyTextStyle.labelMedium,
      labelSmall: MyTextStyle.labelSmall,
    );
  }
}