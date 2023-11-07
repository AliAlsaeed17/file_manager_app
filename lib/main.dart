import 'package:file_manager_app/core/constants/app_theme.dart';
import 'package:file_manager_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeArabic,
      locale: const Locale('ar'),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
