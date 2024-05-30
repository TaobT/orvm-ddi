import 'package:demo_app/presentation/screens/counter/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.tealAccent
      ),
      darkTheme: ThemeData.dark(),
      home: const CounterScreen()
    );
  }
}