import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  static const String routeNamed = 'Home-Page';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1E3FF),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // Set height for the AppBar
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
          ),
          child: AppBar(
            primary: true,
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFFFFFFFF), // Customize AppBar color
            title: Image.asset(
              "assets/devve.png",
              height: 30,
            ),
            actions: [
              Image.asset(
                "assets/streak.png",
                height: 30,
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Skill Snapshot",
                  style: GoogleFonts.exo2(),
                ),
                const Spacer(),
                Text(
                  "Details",
                  style: GoogleFonts.exo2(),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/data.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Challenge Zones",
                  style: GoogleFonts.exo2(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
