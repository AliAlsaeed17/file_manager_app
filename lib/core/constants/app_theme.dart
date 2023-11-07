import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeArabic = ThemeData(
    useMaterial3: true,
    fontFamily: 'Hacen Tunisia Lt',
    splashColor: null,
    primarySwatch: null,
    canvasColor: AppColors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.violet,
      onPrimary: AppColors.violet,
      secondary: AppColors.white,
      onSecondary: AppColors.white,
      error: Colors.red,
      onError: Colors.red,
      background: AppColors.white,
      onBackground: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.white,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: AppColors.darkBlue.withOpacity(0.4),
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColors.darkBlue.withOpacity(0.4),
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.darkBlue.withOpacity(0.4),
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkBlue.withOpacity(0.4),
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: AppColors.darkBlue.withOpacity(0.4),
        fontSize: 12,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor:
            const MaterialStatePropertyAll<Color>(AppColors.violet),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        minimumSize: const MaterialStatePropertyAll<Size>(
          Size(double.infinity, 55),
        ),
      ),
    ),
  );
}
