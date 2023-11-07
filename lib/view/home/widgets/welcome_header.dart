import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge!,
        ),
        const VerticalSizedBox(5),
        Text(subTitle,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.darkBlue, fontSize: 25)),
      ],
    );
  }
}
