import 'package:file_manager_app/core/constants/app_colors.dart';
import 'package:file_manager_app/core/constants/app_routes.dart';
import 'package:file_manager_app/view/shared/sized_boxes/vertical_sized_box.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violet,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/splash_icon.PNG',
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              top: MediaQuery.of(context).size.height * .6,
              right: 40,
              left: 40,
              bottom: 40,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: ClipPathClass(),
                    child: Container(
                      padding: const EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Manage your file with Filoo App',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          VerticalSizedBox(10),
                          Text(
                            'Easy way to manage your file, video, images, doc, PDF etc etc',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.darkBlue.withOpacity(0.3),
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.violet,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.homeScreen);
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.pink,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.moveTo(0, size.height);
    path.lineTo(size.width * .35, size.height);

    path.quadraticBezierTo(size.width * 0.35, size.height * 0.7,
        size.width * 0.5, size.height * 0.7);
    path.quadraticBezierTo(
        size.width * 0.65, size.height * 0.7, size.width * 0.65, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
