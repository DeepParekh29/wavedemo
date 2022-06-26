import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WaveWidget(
          config: CustomConfig(
            gradients: [
              [Colors.red,Colors.pinkAccent],
              [Colors.redAccent,Colors.deepOrange],
              [Colors.orange,Colors.yellowAccent],
              [Colors.yellowAccent,Colors.pink],

            ],
            gradientBegin: Alignment.centerLeft,
            gradientEnd: Alignment.centerRight,
            durations: [3500,19440,10000,6000],
            heightPercentages: [0.20,0.23,0.25,0.30],
          ),
          size: Size(double.infinity,double.infinity),
        ),
      ),
    );
  }
}

