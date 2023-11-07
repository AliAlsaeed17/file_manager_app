import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/view/shared/sized_boxes/horizontal_sized_box.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class FileDetailsItem extends StatelessWidget {
  const FileDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.video_camera_back,
                  color: AppColors.white,
                  size: 35,
                ),
              ),
            ),
            HorizontalSizedBox(15),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Video Shot',
                    style: TextStyle(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  VerticalSizedBox(5),
                  Text(
                    '168 video - 3.6 GB',
                    style: TextStyle(
                      color: AppColors.darkBlue.withOpacity(0.4),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.darkBlue.withOpacity(0.4),
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
