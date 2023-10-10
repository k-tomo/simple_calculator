// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatorImpl _$$CalculatorImplFromJson(Map<String, dynamic> json) =>
    _$CalculatorImpl(
      displayNum: (json['displayNum'] as num?)?.toDouble() ?? 0,
      answerNum: (json['answerNum'] as num?)?.toDouble() ?? 0,
      inputNum: (json['inputNum'] as num?)?.toDouble() ?? null,
      inputOperator: json['inputOperator'] as String? ?? null,
      isDecimalPoint: json['isDecimalPoint'] as bool? ?? false,
    );

Map<String, dynamic> _$$CalculatorImplToJson(_$CalculatorImpl instance) =>
    <String, dynamic>{
      'displayNum': instance.displayNum,
      'answerNum': instance.answerNum,
      'inputNum': instance.inputNum,
      'inputOperator': instance.inputOperator,
      'isDecimalPoint': instance.isDecimalPoint,
    };
