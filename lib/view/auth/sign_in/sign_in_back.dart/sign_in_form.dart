import 'package:devdevil/model/constant/fonts.dart';
import 'package:devdevil/model/user_model.dart';
import 'package:devdevil/view_model/auth/sign_in/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signInEvent() {
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = passwordController.text;

    UserModel userModel = UserModel(
        email: email, password: password, confPassword: confirmPassword);
    BlocProvider.of<SignInBloc>(context).add(
      SignInUserDetailsEvent(userModel),
    );
  }

  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInButtonPressedState) {
          signInEvent();
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
                controller: emailController,
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
                controller: passwordController,
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
