import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/core/constants/app_sizes.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class FileTypeBox extends StatelessWidget {
  const FileTypeBox(
      {super.key,
      required this.fileType,
      required this.fileCount,
      required this.backgroundColor,
      required this.icon});

  final String fileType;
  final String fileCount;
  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: AppSizes.radius20,
            ),
            child: Icon(
              icon,
              color: AppColors.white,
              size: 45,
            ),
          ),
          const VerticalSizedBox(10),
          Text(
            fileType,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const VerticalSizedBox(8),
          Text(
            fileCount,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
