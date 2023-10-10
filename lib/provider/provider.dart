import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_calculator/model/calculator.dart';
import 'package:simple_calculator/model_view/calculator_notifier.dart';

//Calculatorモデルのprovider
final calculatorProvider =
StateNotifierProvider<CalculatorNotifier, Calculator>((ref) {
  return CalculatorNotifier(ref);
});

