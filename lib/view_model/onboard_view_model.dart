import 'package:flutter/material.dart';

class OnBoardController extends ChangeNotifier {
  int _currentIndex = 0;
  bool _firstView = false;

  int get currentIndex => _currentIndex;

  bool get firstView => _firstView;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  set firstView(bool value) {
    _firstView = value;
    notifyListeners();
  }
}
