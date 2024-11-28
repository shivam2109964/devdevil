import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle exoFont({
    required double size,
    required color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.exo2(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
