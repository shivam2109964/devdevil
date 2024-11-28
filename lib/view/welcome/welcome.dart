import 'package:devdevil/view/welcome/welcome_back/background.dart';
import 'package:devdevil/view/welcome/welcome_back/bottomButton.dart';
import 'package:devdevil/view/welcome/welcome_back/onBoard_image.dart';
import 'package:devdevil/view/welcome/welcome_back/welcomeText.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  static const String routeNamed = "/Welcome-page";
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      primary: true,
      body: Stack(
        children: [
          WelcomeBackground(),
          Align(
            alignment: Alignment.topCenter,
            child: OneBoardImage(),
          ),
          Align(
            alignment: Alignment(0, 0.1),
            child: WelcomeText(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: WelBottomButton(),
          ),
        ],
      ),
    );
  }
}
