import 'package:flutter/material.dart';
import 'package:sunat_app/core/constants/colors.dart';

class ButtonStyles {
  static final buttonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    shadowColor: MaterialStateProperty.all(fillColor),
  );
}
