import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunat_app/core/constants/colors.dart';

class AppTheme extends ChangeNotifier {
  static ThemeData lightTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),

    //
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: primaryColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
