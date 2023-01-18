import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunat_app/core/constants/colors.dart';

class AppTheme extends ChangeNotifier {
  static ThemeData lightTheme = ThemeData(
    platform: TargetPlatform.iOS,

    textTheme: GoogleFonts.poppinsTextTheme(),

    // appbar
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: primaryColor,
    ),

    //Floating action button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 0,
      hoverElevation: 2,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
    platform: TargetPlatform.iOS,
  );
}
