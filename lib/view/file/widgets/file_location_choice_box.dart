import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/view/shared/app_button.dart';
import 'package:flutter/material.dart';

class FileLocationChoiceBox extends StatelessWidget {
  const FileLocationChoiceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          const Expanded(
            child: AppButton(
              text: 'Storage',
            ),
          ),
          Expanded(
            child: AppButton(
              text: 'Cloudes',
              backgroundColor: AppColors.white,
              textColor: AppColors.darkBlue.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
