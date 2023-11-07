import 'package:flutter/material.dart';

class IntroBackgroundImage extends StatelessWidget {
  const IntroBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_icon.PNG',
      fit: BoxFit.cover,
    );
  }
}
