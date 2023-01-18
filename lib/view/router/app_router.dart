import 'package:flutter/material.dart';
import 'package:sunat_app/core/exceptions/route_exception.dart';
import 'package:sunat_app/view/screens/screens.dart';
import 'package:sunat_app/view/screens/sign_up_screen/sign_up_screen.dart';

class AppRouter {
  static const String home = '/';
  static const String onBoard = '/onBoard';

  static const String signIn = '/signin';
  static const String signUp = '/signup';

  static const String authValidator = '/auth-validator';

  static const String products = '/products';
  static const String clients = '/clients';
  static const String invoice = '/invoice';

  static const String addProduct = '/add-product';

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
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case products:
        return MaterialPageRoute(builder: (_) => const ProductScreen());
      case clients:
        return MaterialPageRoute(builder: (_) => const ClientScreen());
      case invoice:
        return MaterialPageRoute(builder: (_) => const InvoiceScreen());
      case addProduct:
        return MaterialPageRoute(builder: (_) => const AddProductScreen());
      case authValidator:
        return MaterialPageRoute(builder: (_) => const AuthScreenValidator());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
