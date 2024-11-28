import 'package:devdevil/model/constant/colors.dart';
import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: DynamicScreenSize.heightMQ(context: context, reqHeight: 0.3),
      width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.8),
      child: Column(
        children: [
          Container(
            height:
                DynamicScreenSize.heightMQ(context: context, reqHeight: 0.075),
            width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.7),
            decoration: const BoxDecoration(
              color: AppColor.darkBlueColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                "Sign In",
                style: AppFonts.exoFont(
                  size: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Or",
            style: AppFonts.exoFont(
              size: 18,
              color: Colors.grey.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/google.png",
                height: 50,
              ),
              Image.asset(
                "assets/face.png",
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
