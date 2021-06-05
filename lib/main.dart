import 'package:flutter/material.dart';
import 'pages/TweenAnimationBuilderV2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowMaterialGrid: false,
        title: 'Flutter Animatons',
        theme: ThemeData.dark(),
        home: HomePage());
  }
}
