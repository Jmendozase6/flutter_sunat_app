import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunat_app/core/constants/colors.dart';

class TextFieldStyles {
  static final outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(15.r),
  );

  static final outlineErrorInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.red,
    ),
    borderRadius: BorderRadius.circular(15.r),
  );
  static final focusedBorderInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: primaryColor,
    ),
    borderRadius: BorderRadius.circular(15.r),
  );
}
