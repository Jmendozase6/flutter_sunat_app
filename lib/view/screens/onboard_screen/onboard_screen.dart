import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunat_app/view/common_widgets/common_widgets.dart';
import 'package:sunat_app/view/common_widgets/no_route_alert.dart';
import 'package:sunat_app/view/router/app_router.dart';

import 'package:sunat_app/view/screens/onboard_screen/widgets/custom_page_view.dart';
import 'package:sunat_app/view/screens/onboard_screen/widgets/wave_bottom.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              // Page view
              const CustomPageView(),
              //Sign in button
              CustomMaterialButton(
                text: 'Iniciar sesión',
                showBorder: true,
                onPressed: () => Navigator.pushNamed(context, AppRouter.signIn),
              ),
              SizedBox(height: 10.h),
              // Sign up button
              CustomMaterialButton(
                text: 'Registrarme',
                showBorder: false,
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                  // Navigator.pushNamed(context, AppRouter.signUp);
                },
              ),

              // Background wave
              const WaveBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
