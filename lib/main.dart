import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/Models/slider.model.dart';
import 'package:flutter_provider/Provider/vm/slider.vm.dart';
import 'package:provider/provider.dart';

import 'Provider/Views/ViewState.view.dart';

main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double slider = 0.5;

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelSlider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Demo Privider"),
        ),
        body: Column(
          children: [
            ViewState(),
            MySlider(),
          ],
        ),
      ),
    );
  }
}
