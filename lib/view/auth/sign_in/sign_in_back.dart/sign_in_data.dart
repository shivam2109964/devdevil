import 'package:devdevil/view/auth/sign_in/sign_in_back.dart/sign_in_button.dart';
import 'package:devdevil/view/auth/sign_in/sign_in_back.dart/sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInData extends StatelessWidget {
  const SignInData({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SignInForm(),
              SizedBox(
                height: 20,
              ),
              SignInButton(),
            ],
          ),
        ),
      ),
    );
  }
}
