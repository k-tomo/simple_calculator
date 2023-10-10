import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_calculator/provider/provider.dart';
import 'package:simple_calculator/model/calculator.dart';

// Calculatorモデルのmodel-view
class CalculatorNotifier extends StateNotifier<Calculator> {
  CalculatorNotifier(this.ref) : super(Calculator());
  final Ref ref;

  // 数字キーが押された時に呼ばれる，1桁の数字が引数に入る．
  void inputNum(String inputNum) {
    // inputNumを含めた全長の入力値の文字列が入る．
    String inputAllNum;
    // 小数点のボタン(.)が押されてない時　start
    if (state.isDecimalPoint == false) {
      if (state.inputNum != null) {
        inputAllNum = state.inputNum!.toInt().toString();
        inputAllNum += inputNum;
      } else {
        inputAllNum = inputNum;
      }
    } // end
    // .(小数点のボタン)が推されたあと start
    else{
      if (state.inputNum != null) {
        inputAllNum = state.inputNum!.toDouble().toString();
        if(inputAllNum[inputAllNum.length-1] != '0') {
          inputAllNum += inputNum;
        }else{
          inputAllNum = inputAllNum.replaceRange(inputAllNum.length-1, inputAllNum.length, inputNum);
        }
      } else {
        inputAllNum = inputNum;
      }
    } // end
    state = state.setInputNum(double.parse(inputAllNum));
  }

  // 算術子のボタンが押された時に呼ばれる．
  void inputOperator(String inputOperator) {
    state = state.setInputOperator(inputOperator);
    state = state.calculate();
  }

  // .(小数点のボタン)が呼ばれた時に呼ばれる
  void inputDecimalPoint() {
    state = state.setDesimalPoint();
  }

  // +/-ボタンが呼ばれた時に呼ばれる．
  void signReverse() {
    state = state.signReverse();
  }

  // AC(All Clear)ボタンが押された時に呼ばれる．状態を全てリセットする．
  void reset() {
    state = state.reset();
  }

  // =ボタンが押された時に呼ばれる．
  void calculate() {
    state = state.calculate();
    state = state.setInputOperator(null);
  }
}
