import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/view/file/widgets/file_details_item.dart';
import 'package:file_manager_app/view/file/widgets/file_location_choice_box.dart';
import 'package:file_manager_app/view/file/widgets/file_size_box.dart';
import 'package:file_manager_app/view/shared/sized_boxes/horizontal_sized_box.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({super.key});

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Google Course'),
        leading: Icon(
          Icons.arrow_back_ios_new,
        ),
        actions: [
          Icon(
            Icons.menu,
          ),
          HorizontalSizedBox(15)
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height * .69,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.violet,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height * .13,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  FileLocationChoiceBox(),
                  const VerticalSizedBox(20),
                  FileSizeBox(),
                  const VerticalSizedBox(20),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return FileDetailsItem();
                      },
                      separatorBuilder: (context, index) =>
                          VerticalSizedBox(10),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
