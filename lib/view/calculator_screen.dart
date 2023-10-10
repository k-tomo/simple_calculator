import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_calculator/provider/provider.dart';

// 電卓の画面
class CalculatorScreen extends ConsumerWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  // 電卓のボタン
  Widget _calcButton(BuildContext context, WidgetRef ref, String text) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    // Calculatorモデルの状態変更を変更するインスタンス．
    final calculatorController = ref.read(calculatorProvider.notifier);
    return GestureDetector(
        onTap: () {
          if (text == 'AC') {
            calculatorController.reset();
          } else if (text == '×' ||
              text == '÷' ||
              text == '+' ||
              text == '-' ||
              text == '%') {
            calculatorController.inputOperator(text);
          } else if (text == '+/-') {
            calculatorController.signReverse();
          } else if (text == '.') {
            calculatorController.inputDecimalPoint();
          } else if (text == '=') {
            calculatorController.calculate();
          } else {
            calculatorController.inputNum(text);
          }
        },
        child: Container(
          // GestureDetectorで反応させるために色を指定しておく．これがないとTextの上でしか反応しない．
          color: Colors.white,
          alignment: Alignment.center,
          height: (_deviceHeight / 8),
          child: Text(
            '$text',
            style: TextStyle(fontSize: 30),
          ),
        ));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Calculatorモデルの状態変更を通知するインスタンス．．
    final calculator = ref.watch(calculatorProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          // ディスプレイ　start
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Text(
              '${calculator.displayNum}',
              style: TextStyle(color: Colors.black, fontSize: 50),
            ),
          ), // end
          // 以下キーボード
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                _calcButton(context, ref, 'AC'),
                _calcButton(context, ref, '+/-'),
                _calcButton(context, ref, '%'),
                _calcButton(context, ref, '÷'),
              ]),
              TableRow(children: [
                _calcButton(context, ref, '7'),
                _calcButton(context, ref, '8'),
                _calcButton(context, ref, '9'),
                _calcButton(context, ref, '×'),
              ]),
              TableRow(children: [
                _calcButton(context, ref, '4'),
                _calcButton(context, ref, '5'),
                _calcButton(context, ref, '6'),
                _calcButton(context, ref, '-'),
              ]),
              TableRow(children: [
                _calcButton(context, ref, '1'),
                _calcButton(context, ref, '2'),
                _calcButton(context, ref, '3'),
                _calcButton(context, ref, '+'),
              ]),
            ],
          ),
          Table(
            border: TableBorder(
                bottom: BorderSide(),
                right: BorderSide(),
                left: BorderSide(),
                horizontalInside: BorderSide(),
                verticalInside: BorderSide()),
            columnWidths: {0: FractionColumnWidth(0.5)},
            children: [
              TableRow(children: [
                _calcButton(context, ref, '0'),
                _calcButton(context, ref, '.'),
                _calcButton(context, ref, '='),
              ])
            ],
          )
        ]),
      ),
    );
  }
}
