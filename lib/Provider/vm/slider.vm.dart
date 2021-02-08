import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/Models/slider.model.dart';
import 'package:provider/provider.dart';

class MySlider extends StatelessWidget {
  Widget build(BuildContext context) {
    final sliderState = Provider.of<ModelSlider>(context);

    return Slider(
        value: sliderState.sliderValue,
        onChanged: (newValue) => {sliderState.sliderValue = newValue});
  }
}
