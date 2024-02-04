import 'package:flutter/material.dart';

class LightTheme {
  final Color mainColor = const Color(0xff3870c3);
  static MaterialColor get primary => const MaterialColor(0xff3870c3, {
    50: Color(0xff98b8ff),
    100: Color(0xff85ade8),
    200: Color(0xff89adea),
    300: Color(0xff7ba1da),
    400: Color(0xff5b8dcb),
    500: Color(0xff4474bd),
    600: Color(0xff4b7cc5),
    700: Color(0xff3e6bad),
    800: Color(0xff123d7c),
    900: Color(0xff0b2449),
  });

  static ThemeData lightTheme = ThemeData(
      primarySwatch: primary,
      primaryColor: primary,
      scaffoldBackgroundColor:  Colors.white.withOpacity(0.9),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white.withOpacity(0.9),
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
              color: Colors.black,
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),
          bodyText1: TextStyle(
              color: Colors.black,
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      cardColor: const Color(0xff23262D),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(
            color: Color(0xff6B7280),
            fontSize: 12,
            fontWeight: FontWeight.w400
        ),
        fillColor: Colors.white.withOpacity(0.8),
        filled: true,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(25, 21, 28, 0.10),
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
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
            foregroundColor : MaterialStatePropertyAll(Color(0xff30889C)),
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
