import 'package:devdevil/model/constant/colors.dart';
import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/model/dynamic_screen_size.dart';
import 'package:devdevil/view_model/auth/sign_up/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonInForm extends StatelessWidget {
  const ButtonInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        BlocProvider.of<SignUpBloc>(context).add(SignUpButtonPressEvent());
      },
      child: Container(
        height: DynamicScreenSize.heightMQ(context: context, reqHeight: 0.075),
        width: DynamicScreenSize.widthMQ(context: context, reqWidth: 0.7),
        decoration: const BoxDecoration(
          color: AppColor.darkBlueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            "SignUp",
            style: AppFonts.exoFont(
              size: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
