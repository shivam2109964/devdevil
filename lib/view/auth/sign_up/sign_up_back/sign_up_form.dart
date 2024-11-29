import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/model/user_model.dart';
import 'package:devdevil/view_model/auth/sign_up/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmTextEditingController = TextEditingController();

  bool _obsecure = true;

  void signUpEvent() {
    String email = emailTextEditingController.text;
    String password = passwordTextEditingController.text;
    String confirmPass = passwordTextEditingController.text;

    UserModel userModel =
        UserModel(email: email, password: password, confPassword: confirmPass);

    BlocProvider.of<SignUpBloc>(context).add(SignUpWithEmailId(userModel));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpButtonPressedState) {
          signUpEvent();
        }
      },
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: AppFonts.exoFont(
                      size: 15,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailTextEditingController,
                style: GoogleFonts.exo2(),
                decoration: InputDecoration(
                  filled: true,
                  enabled: true,
                  fillColor: const Color(0xFFEAEAEA),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Color(0xFF111341), width: 2),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Password",
                    style: AppFonts.exoFont(
                      size: 15,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordTextEditingController,
                style: GoogleFonts.exo2(),
                decoration: InputDecoration(
                  filled: true,
                  enabled: true,
                  fillColor: const Color(0xFFEAEAEA),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Color(0xFF111341), width: 2),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Confirm Password",
                    style: AppFonts.exoFont(
                      size: 15,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: confirmTextEditingController,
                style: GoogleFonts.exo2(),
                obscureText: _obsecure,
                decoration: InputDecoration(
                  filled: true,
                  enabled: true,
                  fillColor: const Color(0xFFEAEAEA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Color(0xFF111341), width: 2),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obsecure = !_obsecure;
                      });
                    },
                    child: Image.asset(
                      _obsecure ? "assets/eye.png" : "assets/eyeOpen.png",
                      scale: 3.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
