import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:you_movies/utils/constants/app_sizes.dart';

class FontSizes {
  static double small = AppSizes.sp(12);
  static double regular = AppSizes.sp(14);
  static double medium = AppSizes.sp(16);
  static double large = AppSizes.sp(18);
  static double xLarge = AppSizes.sp(20);
  static double xxLarge = AppSizes.sp(24);
  static double huge = AppSizes.sp(30);
}

class AppTextStyles {
  static TextStyle montserrat({
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    double? fontSize, // use scaled size
  }) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize ?? FontSizes.regular,
    );
  }

  // Predefined styles
  static TextStyle heading() => montserrat(
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.xLarge,
      );

  static TextStyle subheading() => montserrat(
        fontWeight: FontWeight.w600,
        fontSize: FontSizes.large,
      );

  static TextStyle body() => montserrat(
        fontSize: FontSizes.regular,
      );

  static TextStyle caption() => montserrat(
        fontSize: FontSizes.medium,
      );
}
