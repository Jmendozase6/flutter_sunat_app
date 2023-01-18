import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/common_widgets/common_widgets.dart';
import 'package:sunat_app/view/screens/home_screen/home_screen.dart';
import 'package:sunat_app/view/styles/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Text editings controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // test@gmail.com   test12
  void signUserIn() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      showDialog(
          context: context,
          builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ));

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);

        if (!mounted) return;
        // Pop the circle
        Navigator.pop(context);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (route) => false);
      } on FirebaseAuthException catch (e) {
        // Pop the circle
        Navigator.pop(context);

        if (e.code == 'user-not-found') {
          wrongEmailMessage('No se encontró un usuario con ese email');
        } else if (e.code == 'wrong-password') {
          wrongEmailMessage('La contraseña es incorrecta');
        }
      }
    } else {
      wrongEmailMessage('Debe completar todos los campos');
    }
  }

  void wrongEmailMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
        );
      },
    );
  }

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
                SizedBox(height: 0.04.sh),
                Text(
                  'Hey!',
                  style: TextStyles.headline2Bold(color: titleColor),
                ),
                Text(
                  'Registrate ingresando \ntus datos',
                  textAlign: TextAlign.center,
                  style:
                      TextStyles.headline7(color: titleColor.withOpacity(0.5)),
                ),
                SizedBox(
                  height: 160.h,
                  width: 160.w,
                  child: SvgPicture.asset('assets/images/signin.svg',
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 10.h),
                // CustomTextField(
                //   controller: emailController,
                //   hintText: 'Nombres',
                //   obscureText: false,
                //   icon: FontAwesomeIcons.user,
                // ),
                // SizedBox(height: 10.h),
                // CustomTextField(
                //   controller: emailController,
                //   hintText: 'Apellidos',
                //   obscureText: false,
                //   icon: FontAwesomeIcons.user,
                // ),
                // SizedBox(height: 10.h),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Correo electrónico',
                  obscureText: false,
                  icon: FontAwesomeIcons.envelope,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                  icon: FontAwesomeIcons.lock,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 20.h),
                CustomMaterialButton(
                  text: 'Registrarme',
                  showBorder: true,
                  onPressed: signUserIn,
                  minWidht: 0.7.sw,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _SignInButton(
                        imgSrc: 'assets/icons/google_icon.svg',
                        onTap: () {
                          print('XD');
                        }),
                    SizedBox(width: 20.w),
                    _SignInButton(
                        imgSrc: 'assets/icons/apple_icon.svg',
                        onTap: () {
                          print('xd');
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    Key? key,
    required this.imgSrc,
    required this.onTap,
  }) : super(key: key);

  final String imgSrc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: REdgeInsets.all(10),
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
          color: borderColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: SvgPicture.asset(imgSrc),
      ),
    );
  }
}
