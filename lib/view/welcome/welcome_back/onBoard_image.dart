import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:flutter/material.dart';

class OneBoardImage extends StatelessWidget {
  const OneBoardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "\assets/welcome_page.png",
      height: DynamicScreenSize.heightMQ(context: context, reqHeight: 0.5),
    );
  }
}
