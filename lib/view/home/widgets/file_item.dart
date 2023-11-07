import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/core/constants/app_routes.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class FileItem extends StatelessWidget {
  const FileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.fileScreen);
      },
      child: Container(
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
              child: Image.asset('assets/images/file_icon.PNG'),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Google UX Course',
                    style: TextStyle(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  VerticalSizedBox(5),
                  Text(
                    'Uploaded on 28 April',
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
                  Icons.menu,
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
