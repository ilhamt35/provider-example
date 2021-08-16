import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  int _entity = 0;

  int get entity => _entity;

  set entity(int value) {
    _entity = value;
    notifyListeners();
  }
}
