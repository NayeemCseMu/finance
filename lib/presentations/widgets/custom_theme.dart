import 'package:finance/presentations/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class MyTheme {
  static final borderRadius = BorderRadius.circular(Utils.hPadding(size: 5.0));
  static final theme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
      colorScheme: const ColorScheme.light(secondary: kPrimaryColor),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          bodySmall: TextStyle(fontSize: 12, height: 1.83),
          bodyLarge: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, height: 1.375),
          bodyMedium: TextStyle(fontSize: 14, height: 1.5714),
          labelLarge:
              TextStyle(fontSize: 16, height: 2, fontWeight: FontWeight.w600),
          // titleLarge: const TextStyle(
          //     fontSize: 16, height: 2, fontWeight: FontWeight.w600),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 64),
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0.0),
          splashFactory: NoSplash.splashFactory,
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0))),
          shadowColor: const MaterialStatePropertyAll<Color>(transparent),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 3,
        backgroundColor: Color(0x00ffffff),
        showUnselectedLabels: true,
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        hintStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
            color: grayColorWithOpacity),
        labelStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
            color: grayColorWithOpacity),
        contentPadding: EdgeInsets.symmetric(
            horizontal: Utils.hPadding(size: 20.0),
            vertical: Utils.vPadding(size: 18.0)),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: borderColor.withOpacity(0.8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: borderColor.withOpacity(0.8)),
        ),
        fillColor: inputFieldBGColor,
        filled: true,
        focusColor: borderColor,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: blackColor,
        selectionColor: blackColor,
        selectionHandleColor: blackColor,
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: kPrimaryColor));
}
