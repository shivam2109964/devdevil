import 'package:devdevil/model/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}
