import 'package:flutter/material.dart';

class DynamicScreenSize {
  static double heightMQ({
    required BuildContext context,
    required double reqHeight,
  }) {
    return MediaQuery.of(context).size.height * reqHeight;
  }

  static double widthMQ({
    required BuildContext context,
    required reqWidth,
  }) {
    return MediaQuery.of(context).size.width * reqWidth;
  }
}
