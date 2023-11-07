import 'package:file_manager_app/core/constants/app_routes.dart';
import 'package:file_manager_app/view/file/screens/file_screen.dart';
import 'package:file_manager_app/view/home/screens/home_screen.dart';
import 'package:file_manager_app/view/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case AppRoutes.fileScreen:
        return MaterialPageRoute(
          builder: (_) => const FileScreen(),
        );
    }
    return null;
  }
}
