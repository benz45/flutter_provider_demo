import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/Models/slider.model.dart';
import 'package:provider/provider.dart';

class ViewState extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<ModelSlider>(
      builder: (context, sliderState, _) => Column(
        children: [
          Text("View state on context",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Slider value = ${sliderState.sliderValue.toStringAsFixed(2)}"),
          SizedBox(
            height: 20,
          ),
          ViewOnSelector(),
        ],
      ),
    );
  }
}

class ViewOnSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Selector<ModelSlider, String>(
      selector: (_, model) => model.sliderName,
      shouldRebuild: (previous, next) => previous == next,
      builder: (context, sliderValue, _) => Column(
        children: [
          Text(
            "View state on selector",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Slider value = $sliderValue")
        ],
      ),
    );
  }
}
