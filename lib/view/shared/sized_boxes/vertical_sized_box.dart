import 'package:flutter/material.dart';

class VerticalSizedBox extends StatelessWidget {
  final double height;
  final Color? color;

  const VerticalSizedBox(this.height, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ColoredBox(
        color: color ?? Colors.transparent,
      ),
    );
  }
}
