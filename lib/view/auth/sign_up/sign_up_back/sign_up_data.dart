import 'package:devdevil/view/auth/sign_up/sign_up_back/button_in_form.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/google_face_auth.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpData extends StatelessWidget {
  const SignUpData({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SignUpForm(),
              SizedBox(
                height: 10,
              ),
              ButtonInForm(),
              SizedBox(
                height: 10,
              ),
              GoogleFaceAuth(),
            ],
          ),
        ),
      ),
    );
  }
}
