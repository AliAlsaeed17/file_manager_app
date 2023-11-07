import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FileListItemHeader extends StatelessWidget {
  const FileListItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Recent Files',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColors.darkBlue,
                ),
          ),
        ),
        Expanded(
          child: Text(
            'View all',
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodyMedium!,
          ),
        ),
      ],
    );
  }
}
