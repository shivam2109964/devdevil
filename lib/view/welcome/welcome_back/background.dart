import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DynamicScreenSize.heightMQ(context: context, reqHeight: 1),
      width: DynamicScreenSize.widthMQ(context: context, reqWidth: 1),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight, // Starting point of the gradient
          end: Alignment.bottomLeft, // Ending point of the gradient
          colors: [
            Color(0xFFAFB3FF), // #afb3ff
            Color(0xFFC0C2FF), // #c0c2ff
            Color(0xFFD0D1FF), // #d0d1ff
            Color(0xFFE0E0FF), // #e0e0ff
            Color(0xFFF0EFFF), // #f0efff
            Color(0xFFFFFFFF), // #ffffff
          ],
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          "assets/net.png",
          fit: BoxFit.contain, // Ensure the image scales correctly
          opacity: const AlwaysStoppedAnimation(0.5),
        ),
      ),
    );
  }
}
