import 'package:devdevil/model/constant/colors.dart';
import 'package:devdevil/view/auth/sign_in/sign_in_back.dart/sign_in_data.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/void_place.dart';
import 'package:devdevil/view/home/home.dart';
import 'package:devdevil/view_model/auth/sign_in/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  static const String routeNamed = 'Sign-in';
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBlueColor,
      body: SafeArea(
        child: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state is SignInLoadingState) {
              const CircularProgressIndicator();
            } else if (state is SignInDoneState) {
              Navigator.pushNamed(context, Home.routeNamed);
            }
          },
          builder: (context, state) {
            return BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return const Column(
                  children: [
                    VoidPlace(),
                    SignInData(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
