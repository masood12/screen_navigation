import 'package:flutter/material.dart';
import 'package:screen_navigation/core/utils/colors.dart';

class AppTheme {
  static ColorScheme light = const ColorScheme.light(
    primary: UIColors.primaryColor,
    secondary: UIColors.white,
    onPrimary: UIColors.white,
    onSecondary: UIColors.white,
    background: UIColors.backgroundColor,
  );

  static ThemeData lightTheme = ThemeData(
    colorScheme: AppTheme.light,
    scaffoldBackgroundColor: UIColors.white,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: UIColors.white,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    ),
  );
}
