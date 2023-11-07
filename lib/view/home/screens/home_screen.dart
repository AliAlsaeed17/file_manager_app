import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/view/home/widgets/file_item.dart';
import 'package:file_manager_app/view/home/widgets/file_type_box.dart';
import 'package:file_manager_app/view/home/widgets/files_list_items_header.dart';
import 'package:file_manager_app/view/home/widgets/offer_info_box.dart';
import 'package:file_manager_app/view/home/widgets/welcome_header.dart';
import 'package:file_manager_app/view/shared/sized_boxes/horizontal_sized_box.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_sharp,
            color: AppColors.darkBlue,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColors.darkBlue,
            ),
          ),
          const HorizontalSizedBox(15)
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSizedBox(20),
                const WelcomeHeader(
                  title: 'Hi Rakib',
                  subTitle: 'Manage your file',
                ),
                const VerticalSizedBox(25),
                const OfferInfoBox(),
                const VerticalSizedBox(40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FileTypeBox(
                      fileType: 'Picture',
                      fileCount: '850',
                      backgroundColor: AppColors.pink,
                      icon: Icons.image,
                    ),
                    FileTypeBox(
                      fileType: 'Video',
                      fileCount: '450',
                      backgroundColor: AppColors.orange,
                      icon: Icons.video_call,
                    ),
                    FileTypeBox(
                      fileType: 'File',
                      fileCount: '200',
                      backgroundColor: AppColors.blue,
                      icon: Icons.file_copy,
                    ),
                  ],
                ),
                const VerticalSizedBox(40),
                const FileListItemHeader(),
                const VerticalSizedBox(10),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const FileItem();
                    },
                    separatorBuilder: (context, index) =>
                        const VerticalSizedBox(10),
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
