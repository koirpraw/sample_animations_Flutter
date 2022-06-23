import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  final lightTheme = ThemeData().copyWith(
      primaryColor: Color(0xffffffff),
      brightness: Brightness.light,
      backgroundColor: Color(0xffF7F6FF),
      focusColor: Colors.blueGrey.shade600,
      scaffoldBackgroundColor: Color(0xffF7F6FF),
      textTheme: TextTheme(
        headline1: GoogleFonts.lato(
            fontSize: 101,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
            color: Colors.blueGrey.shade700),
        headline2: GoogleFonts.lato(
            fontSize: 63,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
            color: Colors.blueGrey.shade700),
        headline3: GoogleFonts.lato(
            fontSize: 50,
            fontWeight: FontWeight.w400,
            color: Colors.blueGrey.shade700),
        headline4: GoogleFonts.lato(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: Colors.blueGrey.shade700),
        headline5: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.blueGrey.shade700),
        headline6: GoogleFonts.lato(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            color: Colors.blueGrey.shade700),
        subtitle1: GoogleFonts.lato(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
            color: Colors.blueGrey.shade700),
        subtitle2: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            color: Colors.blueGrey.shade700),
        bodyText1: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: Colors.blueGrey.shade700),
        bodyText2: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: Colors.blueGrey.shade700),
        button: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.25,
            color: Colors.blueGrey.shade700),
        caption: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            color: Colors.blueGrey.shade700),
        overline: GoogleFonts.montserrat(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            color: Colors.blueGrey.shade700),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffF7F6FF),
          elevation: 0,
          centerTitle: true,
          titleTextStyle:
              TextStyle(fontSize: 20, color: Colors.blueGrey.shade700),
          iconTheme: IconThemeData(
            color: Colors.blueGrey.shade700,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.blueGrey.shade700,
          )),
      cardTheme: CardTheme(color: Color(0xffffffff)),
      iconTheme: IconThemeData(color: Colors.blueGrey.shade600));


  final darkTheme = ThemeData().copyWith(
    primaryColor: Colors.blueGrey.shade600,
    brightness: Brightness.dark,
    backgroundColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.blueGrey,
    focusColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline1: GoogleFonts.lato(
          fontSize: 101,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
          color: Colors.white),
      headline2: GoogleFonts.lato(
          fontSize: 63,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5,
          color: Colors.white),
      headline3: GoogleFonts.lato(
          fontSize: 50, fontWeight: FontWeight.w400, color: Colors.white),
      headline4: GoogleFonts.lato(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: Colors.white),
      headline5: GoogleFonts.lato(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      headline6: GoogleFonts.lato(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: Colors.white),
      subtitle1: GoogleFonts.lato(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
          color: Colors.white),
      subtitle2: GoogleFonts.lato(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: Colors.white),
      bodyText1: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.white),
      bodyText2: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: Colors.white),
      button: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
          color: Colors.white),
      caption: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: Colors.white),
      overline: GoogleFonts.montserrat(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
          color: Colors.white),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey.shade600,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        )),
    cardTheme: CardTheme(color: Colors.blueGrey.shade600),
  );
}
