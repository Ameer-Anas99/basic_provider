import 'package:flutter/material.dart';

class ProviderNotifier with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  String provider = "Testing Provider";

  void changevalue() {
    provider = "Value Changed";
    notifyListeners();
  }

  Color circleAvatarColor = Colors.green;

  pink() {
    circleAvatarColor = Colors.pink;
    notifyListeners();
  }

  purple() {
    circleAvatarColor = Colors.purple;
    ;
    notifyListeners();
  }

  yellow() {
    circleAvatarColor = Colors.yellow;
    notifyListeners();
  }
}
