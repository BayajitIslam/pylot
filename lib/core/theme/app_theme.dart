import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pylot/core/theme/app_pallete.dart';

class AppTheme {
  //border
  static OutlineInputBorder _border([
    Color borderColor = AppPallete.textfieldBorder,
  ]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(color: borderColor),
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,

    //Text Field Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.primaryColor),
      errorBorder: _border(AppPallete.errorColor),
    ),

    //Text
    textTheme: TextTheme(
      bodySmall: GoogleFonts.inter(
        color: AppPallete.blackColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.inter(
        color: AppPallete.blackColor,
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
