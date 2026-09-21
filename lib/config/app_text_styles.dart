import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masterpes_app/config/app_color_themes.dart';

class AppTextStyles {
  static TextStyle appTittle = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  dynamic appFonts = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle appFontsLabels = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  dynamic appFontsLabelsWhite = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  dynamic textIcon = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColorThemes().buttonColor,
  );
  dynamic containerTittle = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  dynamic iconic = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
}
