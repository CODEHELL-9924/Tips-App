import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle appTittle = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  dynamic appFonts = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle appFontsLabels = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  dynamic appFontsLabelsWhite = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.red,
  );

  dynamic appFontsLabelsWhitePure = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
