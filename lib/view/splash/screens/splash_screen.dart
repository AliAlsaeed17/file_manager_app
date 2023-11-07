import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/core/constants/app_routes.dart';
import 'package:file_manager_app/view/shared/app_icon_button.dart';
import 'package:file_manager_app/view/splash/widgets/intro_background_image.dart';
import 'package:file_manager_app/view/splash/widgets/intro_box.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violet,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const IntroBackgroundImage(),
              Positioned.fill(
                top: MediaQuery.of(context).size.height * .57,
                right: 40,
                left: 40,
                bottom: 40,
                child: Stack(
                  children: [
                    const IntroBox(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AppIconButton(
                        icon: Icons.arrow_forward,
                        onPressed: () => Navigator.pushNamed(
                          context,
                          AppRoutes.homeScreen,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
