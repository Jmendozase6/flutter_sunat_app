import 'package:flutter/material.dart';

class SignInController extends ChangeNotifier {
  bool _showPassword = false;

  bool get isInputPassword => _showPassword;

  set isInputPassword(bool value) {
    _showPassword = value;
    notifyListeners();
  }
}
