import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isBlueAccent = true;

  bool get isBlueAccent => _isBlueAccent;

  set isBlueAccent(value) {
    _isBlueAccent = value;
    notifyListeners();
  }

  Color get color => (_isBlueAccent) ? Colors.blueAccent : Colors.grey;
}
