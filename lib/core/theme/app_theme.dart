import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pylot/core/theme/app_pallete.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPallete.transparentColor,

    //Text
    //Text
    textTheme: TextTheme(
      bodySmall: GoogleFonts.inter(
        color: AppPallete.greyColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.inter(
        color: AppPallete.greyColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.inter(
        color: AppPallete.blackColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.inter(
        color: AppPallete.blackColor,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
