import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
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
