import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/view_model/auth/sign_up/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoogleFaceAuth extends StatelessWidget {
  const GoogleFaceAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                BlocProvider.of<SignUpBloc>(context).add(
                  SignUpWithGoogleEvent(),
                );
              },
              child: Image.asset(
                "assets/google.png",
                height: 50,
              ),
            ),
            Image.asset(
              "assets/face.png",
              height: 50,
            )
          ],
        )
      ],
    );
  }
}
