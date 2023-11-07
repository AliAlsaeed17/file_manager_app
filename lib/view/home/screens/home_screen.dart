import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/core/constants/app_routes.dart';
import 'package:file_manager_app/view/home/widgets/file_item.dart';
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
        leading: Icon(
          Icons.menu_sharp,
          color: AppColors.darkBlue,
        ),
        actions: [
          Icon(
            Icons.search,
            color: AppColors.darkBlue,
          ),
          HorizontalSizedBox(15)
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
                Text(
                  'Hi Rakib',
                  style: TextStyle(
                    color: AppColors.darkBlue.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const VerticalSizedBox(5),
                const Text(
                  'Manage your file',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const VerticalSizedBox(25),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: AppColors.violet,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.violet.withOpacity(0.8),
                        spreadRadius: 7,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/cloud_icon.PNG',
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Unlimted Storage',
                              style: TextStyle(
                                color: AppColors.white.withOpacity(0.7),
                                fontSize: 15,
                              ),
                            ),
                            const VerticalSizedBox(8),
                            Text(
                              '\$30/year',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            const VerticalSizedBox(8),
                            Text(
                              'Offer till May 16',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 15,
                              ),
                            ),
                            const VerticalSizedBox(8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                backgroundColor: AppColors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Upgrade',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalSizedBox(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.pink,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Icon(
                            Icons.image,
                            color: AppColors.white,
                            size: 45,
                          ),
                        ),
                        VerticalSizedBox(10),
                        Text(
                          'Picture',
                          style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        VerticalSizedBox(8),
                        Text(
                          '850',
                          style: TextStyle(
                            color: AppColors.darkBlue.withOpacity(0.6),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.orange,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Icon(
                            Icons.video_call,
                            color: AppColors.white,
                            size: 45,
                          ),
                        ),
                        VerticalSizedBox(10),
                        Text(
                          'Video',
                          style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        VerticalSizedBox(8),
                        Text(
                          '450',
                          style: TextStyle(
                            color: AppColors.darkBlue.withOpacity(0.6),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Icon(
                            Icons.file_copy,
                            color: AppColors.white,
                            size: 45,
                          ),
                        ),
                        VerticalSizedBox(10),
                        Text(
                          'File',
                          style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        VerticalSizedBox(8),
                        Text(
                          '200',
                          style: TextStyle(
                            color: AppColors.darkBlue.withOpacity(0.6),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                VerticalSizedBox(40),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Recent Files',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: AppColors.darkBlue.withOpacity(0.4),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                VerticalSizedBox(10),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return FileItem();
                    },
                    separatorBuilder: (context, index) => VerticalSizedBox(10),
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
