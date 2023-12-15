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

  int currentIndex = 0;

  List<Color> colors = [
    Colors.red,
    Colors.teal,
    Colors.purple,
    Colors.indigo,
    Colors.red,
    Colors.orange
  ];

  void color() {
    currentIndex = (currentIndex + 1) % colors.length;
    // currentIndex++;
    notifyListeners();
  }
}
