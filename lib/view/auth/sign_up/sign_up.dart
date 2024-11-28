import 'package:devdevil/model/constant/colors.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/sign_up_data.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/void_place.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const String routeNamed = 'Sign-up';
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.darkBlueColor,
      body: SafeArea(
        child: Column(
          children: [
            VoidPlace(),
            SignUpData(),
          ],
        ),
      ),
    );
  }
}
