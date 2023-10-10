import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'view/calculator_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: SimpleCalculator(),
    ),
  );
}

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CalculatorScreen(),
    );
  }
}


