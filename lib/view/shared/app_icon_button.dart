import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({super.key, required this.onPressed, required this.icon});

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.pink,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
