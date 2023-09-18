import 'package:flutter/material.dart';

class SpaceWH extends StatelessWidget {
  final double? width;
  final double? height;
  const SpaceWH({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 0.0,
      width: width ?? 0.0,
    );
  }

  static const kWidth = SizedBox(width: 10);
  static const kHeight5 = SizedBox(height: 5);
  static const kHeight10 = SizedBox(height: 10);
  static const kHeight20 = SizedBox(height: 20);
  static const kHeight50 = SizedBox(height: 50);
}
