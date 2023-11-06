import 'dart:math';

import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  double screenHeight = mediaQuery.size.height;
  double screenWidth = mediaQuery.size.width;
  double bodyLargeFontSize =
      sqrt((screenHeight * screenHeight) + (screenWidth * screenWidth)) / 20;
  double bodyMediumFontSize = bodyLargeFontSize / 1.618;
  double bodySmallFontSize = bodyMediumFontSize / 1.618;

  return ThemeData(
      colorScheme: const ColorScheme.light(),
      textTheme: TextTheme(
        bodySmall: TextStyle(fontSize: bodySmallFontSize),
        bodyMedium: TextStyle(fontSize: bodyMediumFontSize),
        bodyLarge: TextStyle(fontSize: bodyLargeFontSize),
      ),
      inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Color.fromRGBO(203, 37, 37, 1),
        ),
      )));
}
