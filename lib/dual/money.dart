import 'package:flutter/foundation.dart';

class Money with ChangeNotifier {
  int _money = 10000;

  int get money => _money;

  set money(int value) {
    _money = value;
    notifyListeners();
  }
}
