import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'view/calculator_screen.dart';
/*
このアプリはRiverpodとfreezedの使い方を学ぶためのチュートリアルです．
 */

void main() {
  runApp(
    ProviderScope(
      child: SimpleCalculator(),
    ),
  );
}

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CalculatorScreen(),
    );
  }
}


