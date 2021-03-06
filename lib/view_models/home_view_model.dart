import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'default';
  int counter = 0;

  void initialise() {
    title = 'initialise';
    notifyListeners();
  }

  void updateTitle() {
    counter++;
    title = 'Updated $counter';
    notifyListeners();
  }
}
