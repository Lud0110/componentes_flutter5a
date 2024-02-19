import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //constante del color primario
  static const primaryColor = Color.fromARGB(255, 41, 15, 46);

  //contante de color secundario
  static const secondaryColor = Color.fromARGB(255, 0, 0, 0);

  //constante del color de fondo
  static const backColor = Color.fromARGB(255, 240, 189, 255);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: primaryColor),
    textTheme: TextTheme(
          headlineLarge: GoogleFonts.acme(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),

          //fuente para textos muy pequeños
          bodySmall: GoogleFonts.montserrat(
            fontSize: 16.0, 
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
  );
}