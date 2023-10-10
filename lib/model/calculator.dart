import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイル
part 'calculator.freezed.dart';
part 'calculator.g.dart';

// Calculatorモデル
@freezed
class Calculator with _$Calculator { // withの後には「_$[class name]」の形式で記述
  const Calculator._(); // メソッドを追加する場合はコンストラクタを追加する

  // プロパティを指定
  const factory Calculator({
    @Default(0) double displayNum,
    @Default(0) double answerNum,
    @Default(null) double? inputNum,
    @Default(null) String? inputOperator,
    @Default(false) bool isDecimalPoint,
  }) = _Calculator;

  // json形式で受け取るためのコードを生成するために記述．今回は使わない．
  /*
  factory Calculator.fromJson(Map<String, dynamic> json) =>
      _$CalculatorFromJson(json);
  */

  // Calculatorモデルの状態をリセットする．
  Calculator reset(){
    return Calculator();
  }

  // 小数点を指定する．
  Calculator setDesimalPoint(){
    return copyWith(isDecimalPoint: true);
  }

  // 数値を入力する．
  Calculator setInputNum(double? inputNum){
    if(inputNum != null) {
      return copyWith(inputNum: inputNum, displayNum: inputNum!);
    }else{
      return copyWith();
    }
  }

  // 算術子を入力する．
  Calculator setInputOperator(String? inputOperator){
    return copyWith(inputOperator: inputOperator);
  }

  // 符号を反転させる．
  Calculator signReverse(){
    if(inputNum != null) {
      return copyWith(inputNum: (this.inputNum! * (-1)),displayNum: (this.inputNum! * (-1)));
    }else{
      return copyWith();
    }
  }

  // 計算する．
  Calculator calculate() {
    double answerNum;
    if (inputNum != null && inputOperator != null) {
      if(this.answerNum == 0){
        return copyWith(displayNum: inputNum!,answerNum: inputNum!, inputNum: null,isDecimalPoint: false);
      }
      switch (this.inputOperator) {
        case '+':
          answerNum = this.answerNum + inputNum!;
          break;
        case '-':
          answerNum = this.answerNum - inputNum!;
          break;
        case '×':
          answerNum = this.answerNum * inputNum!;
          break;
        case '÷':
          answerNum = this.answerNum / inputNum!;
          break;
        case '%':
          answerNum = this.answerNum % inputNum!;
          break;
        default:
          return copyWith();
      }
      return copyWith(displayNum: answerNum,answerNum: answerNum, inputNum: null,isDecimalPoint: false);
    } else {
      return copyWith();
    }
  }
}
