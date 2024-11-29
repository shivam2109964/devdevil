import 'package:devdevil/model/constant/colors.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/sign_up_data.dart';
import 'package:devdevil/view/auth/sign_up/sign_up_back/void_place.dart';
import 'package:devdevil/view/home/home.dart';
import 'package:devdevil/view_model/auth/sign_in/sign_in_bloc.dart';
import 'package:devdevil/view_model/auth/sign_up/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  static const String routeNamed = 'Sign-up';
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBlueColor,
      body: SafeArea(
        child: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state is SignUpLoadingState) {
              const CircularProgressIndicator();
            } else if (state is SignUpDoneState) {
              Navigator.pushNamed(context, Home.routeNamed);
            }

            if (state is SignInLoadingState) {
              const CircularProgressIndicator();
            } else if (state is SignUpWithGoogleDone) {
              Navigator.pushNamed(context, Home.routeNamed);
            }
          },
          builder: (context, state) {
            return BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) {
                return const Column(
                  children: [
                    VoidPlace(),
                    SignUpData(),
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
