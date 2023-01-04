import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/styles/button_styles.dart';
import 'package:sunat_app/view/styles/styles.dart';
import 'package:sunat_app/view/styles/text_field.styles.dart';
import 'package:sunat_app/view_model/sign_in_view_model.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.obscureText});

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final signInController = Provider.of<SignInController>(context);

    return SizedBox(
      height: 40.h,
      width: 0.9.sw,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyles.headline7(color: titleColor.withOpacity(0.2)),
          border: TextFieldStyles.outlineInputBorder,
          errorBorder: TextFieldStyles.outlineErrorInputBorder,
          enabledBorder: TextFieldStyles.outlineInputBorder,
          focusedBorder: TextFieldStyles.outlineInputBorder,
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(FontAwesomeIcons.envelope,
              size: 13.h, color: primaryColor.withOpacity(0.5)),
          suffixIcon: obscureText
              ? IconButton(
                  style: ButtonStyles.buttonStyle,
                  onPressed: () {
                    signInController.isInputPassword =
                        !signInController.isInputPassword;
                  },
                  icon: Icon(
                      signInController.isInputPassword
                          ? FontAwesomeIcons.lock
                          : FontAwesomeIcons.unlock,
                      size: 13.h,
                      color: primaryColor.withOpacity(0.5)))
              : const SizedBox(height: 0, width: 0),
        ),
      ),
    );
  }
}
