import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:flutter/material.dart';

class WelBottomButton extends StatelessWidget {
  const WelBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DynamicScreenSize.heightMQ(context: context, reqHeight: 0.3),
      width: DynamicScreenSize.widthMQ(context: context, reqWidth: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height:
                DynamicScreenSize.heightMQ(context: context, reqHeight: 0.065),
            width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.85),
            decoration: BoxDecoration(
              color: const Color(0xFF111341),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "Get Started",
                style: AppFonts.exoFont(
                  size: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height:
                DynamicScreenSize.heightMQ(context: context, reqHeight: 0.065),
            width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.85),
            decoration: BoxDecoration(
              color: const Color(0xFFE4E6FF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "Sign In",
                style: AppFonts.exoFont(
                  size: 22,
                  color: const Color(0xFF111341),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height:
                DynamicScreenSize.heightMQ(context: context, reqHeight: 0.065),
            width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.85),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
