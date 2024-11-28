import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: DynamicScreenSize.heightMQ(context: context, reqHeight: 0.12),
        width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.75),
        child: Column(
          children: [
            Text(
              "Join Us Today",
              style: AppFonts.exoFont(
                size: 30,
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Enter your details to proceed further",
              style: AppFonts.exoFont(
                size: 15,
                color: Colors.grey.shade900,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
