import 'package:devdevil/model/constant/colors.dart';
import 'package:devdevil/view/auth/sign_in/sign_in_back.dart/sign_in_data.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/void_place.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static const String routeNamed = 'Sign-in';
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.darkBlueColor,
      body: SafeArea(
        child: Column(
          children: [
            VoidPlace(),
            SignInData(),
          ],
        ),
      ),
    );
  }
}
