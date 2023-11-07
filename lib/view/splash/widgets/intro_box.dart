import 'package:file_manager_app/core/class/custom_clip_path.dart';
import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class IntroBox extends StatelessWidget {
  const IntroBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: AppSizes.radius25,
        ),
        child: Column(
          children: [
            Expanded(
              child: Text(
                'Manage your file with Filoo App',
                maxLines: 3,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppColors.darkBlue, fontSize: 25),
              ),
            ),
            Expanded(
              child: Text(
                'Easy way to manage your file, video, images, doc, PDF etc etc',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
