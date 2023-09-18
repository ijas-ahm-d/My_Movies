import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movies/core/colors.dart';

class TextStyles {
  static textstyles(double size, FontWeight fweight, Color clr) {
    return GoogleFonts.montserrat(
      letterSpacing: 0.5,
      fontSize: size,
      fontWeight: fweight,
      color: clr,
    );
  }

  static roboto(double size, FontWeight fweight, Color clr) {
    return GoogleFonts.robotoMono(
      letterSpacing: 0.5,
      fontSize: size,
      fontWeight: fweight,
      color: clr,
    );
  }

  static final headline = GoogleFonts.robotoMono(
    fontSize: 30,
    letterSpacing: 3,
    color: AppColors.appColor,
    fontWeight: FontWeight.bold,
  );
}
