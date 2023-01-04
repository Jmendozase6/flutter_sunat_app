import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/styles/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    required this.text,
    required this.showBorder,
    required this.onPressed,
    this.minWidht,
  }) : super(key: key);

  final String text;
  final bool showBorder;
  final VoidCallback onPressed;
  final double? minWidht;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: showBorder
          ? const StadiumBorder()
          : const StadiumBorder(
              side: BorderSide(color: borderColor, width: 0.2)),
      color: showBorder ? primaryColor : Colors.white,
      height: 40.h,
      minWidth: minWidht ?? 0.9.sw,
      elevation: 0.5,
      child: Text(
        text,
        style:
            TextStyles.headline7(color: showBorder ? Colors.white : titleColor),
      ),
    );
  }
}
