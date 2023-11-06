import 'dart:math';

import 'package:flutter/material.dart';

ThemeData darkTheme(BuildContext context) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  double screenHeight = mediaQuery.size.height;
  double screenWidth = mediaQuery.size.width;
  double bodyLargeFontSize =
      sqrt((screenHeight * screenHeight) + (screenWidth * screenWidth)) / 5;
  double bodyMediumFontSize = bodyLargeFontSize / 1.618;
  double bodySmallFontSize = bodyMediumFontSize / 1.618;

  return ThemeData(
    colorScheme: const ColorScheme.light(),
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: bodySmallFontSize),
      bodyMedium: TextStyle(fontSize: bodyMediumFontSize),
      bodyLarge: TextStyle(fontSize: bodyLargeFontSize),
    ),
  );
}
