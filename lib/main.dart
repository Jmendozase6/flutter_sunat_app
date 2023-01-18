import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sunat_app/core/constants/strings.dart';
import 'package:sunat_app/core/themes/app_theme.dart';
import 'package:sunat_app/data/data_providers/google_sign_in_provider.dart';
import 'package:sunat_app/view/router/app_router.dart';
import 'package:sunat_app/view_model/view_model.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        // Screens
        ChangeNotifierProvider(create: (_) => OnBoardController()),
        ChangeNotifierProvider(create: (_) => SignInController()),
        ChangeNotifierProvider(create: (_) => HomeViewController()),
        ChangeNotifierProvider(create: (_) => GoogleSignInProvider()),

        // Formularios
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(280, 600),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Strings.appTitle,
          initialRoute: AppRouter.authValidator,
          onGenerateRoute: AppRouter.onGenerateRoute,
          theme: AppTheme.lightTheme,
          // theme: ThemeData.dark(),
        );
      },
    );
  }
}
