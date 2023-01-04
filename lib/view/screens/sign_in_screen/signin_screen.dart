import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/common_widgets/common_widgets.dart';
import 'package:sunat_app/view/common_widgets/no_route_alert.dart';
import 'package:sunat_app/view/router/app_router.dart';
import 'package:sunat_app/view/screens/sign_in_screen/widgets/custom_text_button.dart';
import 'package:sunat_app/view/styles/styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fillColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 0.02.sh),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(FontAwesomeIcons.arrowLeft))
                  ],
                ),
                Text(
                  'Hey!',
                  style: TextStyles.headline2Bold(color: titleColor),
                ),
                Text(
                  'Ingresa tus datos para\npoder iniciar sesión',
                  textAlign: TextAlign.center,
                  style:
                      TextStyles.headline7(color: titleColor.withOpacity(0.5)),
                ),
                SizedBox(
                  height: 200.h,
                  width: 200.w,
                  child: SvgPicture.asset('assets/images/signin.svg',
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 10.h),
                const CustomTextField(
                  hintText: 'Correo electrónico',
                  obscureText: false,
                ),
                SizedBox(height: 10.h),
                const CustomTextField(
                  hintText: 'Contraseña',
                  obscureText: true,
                ),
                SizedBox(height: 20.h),
                CustomMaterialButton(
                  text: 'Iniciar sesión',
                  showBorder: true,
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, AppRouter.home),
                  minWidht: 0.7.sw,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 1.h,
                        width: 0.1.sw,
                        color: titleColor.withOpacity(0.2)),
                    CustomTextButton(
                        text: '¿Olvidaste tu contraseña?',
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          );
                        }),
                    Container(
                        height: 1.h,
                        width: 0.1.sw,
                        color: titleColor.withOpacity(0.2)),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
