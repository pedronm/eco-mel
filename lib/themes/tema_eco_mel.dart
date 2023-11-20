import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemaEcoMel {
  static TextTheme lightTextTheme = TextTheme(
    bodySmall: GoogleFonts.zenMaruGothic(
      fontSize: 14,
      fontWeight:FontWeight.w700,
      color: Colors.black
    ),
    headlineLarge: GoogleFonts.encodeSansCondensed(
      fontSize: 72,
      fontWeight:FontWeight.w700,
      color: Colors.black
    ),
    headlineMedium: GoogleFonts.encodeSansCondensed(
      fontSize: 48,
      fontWeight: FontWeight.w400,
      color: Colors.black
    ),
    headlineSmall:GoogleFonts.encodeSansCondensed(
        fontSize: 24,
        fontWeight: FontWeight.w300,
        color: Colors.black
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    bodySmall: GoogleFonts.zenMaruGothic(
        fontSize: 14,
        fontWeight:FontWeight.w700,
        color: Colors.white
    ),
    headlineLarge: GoogleFonts.encodeSansCondensed(
        fontSize: 72,
        fontWeight:FontWeight.w700,
        color: Colors.white
    ),
    headlineMedium: GoogleFonts.encodeSansCondensed(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        color: Colors.white
    ),
    headlineSmall:GoogleFonts.encodeSansCondensed(
        fontSize: 24,
        fontWeight: FontWeight.w300,
        color: Colors.white
    ),
  );

  static ThemeData dark(){
    return ThemeData(
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.white;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData light(){
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
        return Colors.black;
      }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

}