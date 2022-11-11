import 'package:flutter/material.dart';
import 'package:provider_architecture/core/extension/log_extension.dart';

class MyCustomData extends ChangeNotifier {
  MyCustomData._sharedInstance();
  static final MyCustomData _instance = MyCustomData._sharedInstance();
  static MyCustomData get mInstance => _instance;
  double _value = 0;
  double get currentvalue => _value;
  @override
  void notifyListeners() {
    'Değişiklikler yapıldı'.log();
    super.notifyListeners();
  }

  set value(double newValue) {
    if (_value != newValue) {
      _value = newValue;
      notifyListeners();
    }
  }

  void incrementValue() {
    _value++;

    _value.log();
    notifyListeners();
  }
}
