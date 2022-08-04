import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0B0E21),
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              color: const Color(0xFF0B0E21),
            ),
        floatingActionButtonTheme:
            ThemeData.dark().floatingActionButtonTheme.copyWith(
                  backgroundColor: const Color(0xFFFF0350),
                ),
      ),
      home: InputPage(),
    );
  }
}
