import 'package:flutter/material.dart';

class ModelSlider with ChangeNotifier {
  double _sliderValue = 0.5;
  String sliderName = 'Test selector provider';

  double get sliderValue => _sliderValue;

  set sliderValue(newVlue) {
    _sliderValue = newVlue;
    notifyListeners();
  }
}
