import 'package:flutter/material.dart';

class DarkTheme {
  final Color mainColor = const Color(0xff30889C);
  static MaterialColor get primary => const MaterialColor(0xff30889C, {
    50: Color(0xff93e8fc),
    100: Color(0xff74e1fa),
    200: Color(0xff5dd3e7),
    300: Color(0xff50cce1),
    400: Color(0xff45bfd3),
    500: Color(0xff30889C),
    600: Color(0xff156979),
    700: Color(0xff22616c),
    800: Color(0xff1c555e),
    900: Color(0xff12434b),
  });

  static ThemeData darkTheme = ThemeData(
      primarySwatch: primary,
      primaryColor: primary,
      scaffoldBackgroundColor: const Color(0xff16171B),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(22, 23, 27, 1),
        elevation: 0,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      textTheme: const TextTheme(
          bodyText2: TextStyle(
              color: Colors.white,
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              fontWeight: FontWeight.w600),
          bodyText1: TextStyle(
              color: Colors.white,
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              fontWeight: FontWeight.w600)),
      cardColor: const Color(0xff23262D),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(
            color: Color(0xff6B7280),
            fontSize: 12,
            fontWeight: FontWeight.w400),
        fillColor: const Color(0xff1B1D22),
        filled: true,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(25, 21, 28, 0.10),
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(25, 21, 28, 0.10),
          ),
        ),
        iconColor: const Color(0xff6B7280),
        outlineBorder: const BorderSide(
          width: 1,
          color: Color.fromRGBO(25, 21, 28, 0.10),
        ),
      ),
      textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Color(0xff30889C)),
          )),
      checkboxTheme: CheckboxThemeData(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        fillColor: MaterialStatePropertyAll(primary),
        checkColor: const MaterialStatePropertyAll(Colors.white),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedIconTheme: IconThemeData(color: Colors.black)));
}
