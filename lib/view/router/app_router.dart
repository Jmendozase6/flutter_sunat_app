import 'package:flutter/material.dart';
import 'package:sunat_app/core/exceptions/route_exception.dart';
import 'package:sunat_app/view/screens/screens.dart';

class AppRouter {
  static const String home = '/';
  static const String onBoard = '/onBoard';
  static const String signIn = '/signin';
  static const String signUp = '/signup';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case onBoard:
        return MaterialPageRoute(builder: (_) => const OnBoardScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const OnBoardScreen());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
