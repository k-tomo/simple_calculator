// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Calculator _$CalculatorFromJson(Map<String, dynamic> json) {
  return _Calculator.fromJson(json);
}

/// @nodoc
mixin _$Calculator {
  double get displayNum => throw _privateConstructorUsedError;
  double get answerNum => throw _privateConstructorUsedError;
  double? get inputNum => throw _privateConstructorUsedError;
  String? get inputOperator => throw _privateConstructorUsedError;
  bool get isDecimalPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatorCopyWith<Calculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorCopyWith<$Res> {
  factory $CalculatorCopyWith(
          Calculator value, $Res Function(Calculator) then) =
      _$CalculatorCopyWithImpl<$Res, Calculator>;
  @useResult
  $Res call(
      {double displayNum,
      double answerNum,
      double? inputNum,
      String? inputOperator,
      bool isDecimalPoint});
}

/// @nodoc
class _$CalculatorCopyWithImpl<$Res, $Val extends Calculator>
    implements $CalculatorCopyWith<$Res> {
  _$CalculatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayNum = null,
    Object? answerNum = null,
    Object? inputNum = freezed,
    Object? inputOperator = freezed,
    Object? isDecimalPoint = null,
  }) {
    return _then(_value.copyWith(
      displayNum: null == displayNum
          ? _value.displayNum
          : displayNum // ignore: cast_nullable_to_non_nullable
              as double,
      answerNum: null == answerNum
          ? _value.answerNum
          : answerNum // ignore: cast_nullable_to_non_nullable
              as double,
      inputNum: freezed == inputNum
          ? _value.inputNum
          : inputNum // ignore: cast_nullable_to_non_nullable
              as double?,
      inputOperator: freezed == inputOperator
          ? _value.inputOperator
          : inputOperator // ignore: cast_nullable_to_non_nullable
              as String?,
      isDecimalPoint: null == isDecimalPoint
          ? _value.isDecimalPoint
          : isDecimalPoint // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorImplCopyWith<$Res>
    implements $CalculatorCopyWith<$Res> {
  factory _$$CalculatorImplCopyWith(
          _$CalculatorImpl value, $Res Function(_$CalculatorImpl) then) =
      __$$CalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double displayNum,
      double answerNum,
      double? inputNum,
      String? inputOperator,
      bool isDecimalPoint});
}

/// @nodoc
class __$$CalculatorImplCopyWithImpl<$Res>
    extends _$CalculatorCopyWithImpl<$Res, _$CalculatorImpl>
    implements _$$CalculatorImplCopyWith<$Res> {
  __$$CalculatorImplCopyWithImpl(
      _$CalculatorImpl _value, $Res Function(_$CalculatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayNum = null,
    Object? answerNum = null,
    Object? inputNum = freezed,
    Object? inputOperator = freezed,
    Object? isDecimalPoint = null,
  }) {
    return _then(_$CalculatorImpl(
      displayNum: null == displayNum
          ? _value.displayNum
          : displayNum // ignore: cast_nullable_to_non_nullable
              as double,
      answerNum: null == answerNum
          ? _value.answerNum
          : answerNum // ignore: cast_nullable_to_non_nullable
              as double,
      inputNum: freezed == inputNum
          ? _value.inputNum
          : inputNum // ignore: cast_nullable_to_non_nullable
              as double?,
      inputOperator: freezed == inputOperator
          ? _value.inputOperator
          : inputOperator // ignore: cast_nullable_to_non_nullable
              as String?,
      isDecimalPoint: null == isDecimalPoint
          ? _value.isDecimalPoint
          : isDecimalPoint // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorImpl extends _Calculator {
  const _$CalculatorImpl(
      {this.displayNum = 0,
      this.answerNum = 0,
      this.inputNum = null,
      this.inputOperator = null,
      this.isDecimalPoint = false})
      : super._();

  factory _$CalculatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorImplFromJson(json);

  @override
  @JsonKey()
  final double displayNum;
  @override
  @JsonKey()
  final double answerNum;
  @override
  @JsonKey()
  final double? inputNum;
  @override
  @JsonKey()
  final String? inputOperator;
  @override
  @JsonKey()
  final bool isDecimalPoint;

  @override
  String toString() {
    return 'Calculator(displayNum: $displayNum, answerNum: $answerNum, inputNum: $inputNum, inputOperator: $inputOperator, isDecimalPoint: $isDecimalPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorImpl &&
            (identical(other.displayNum, displayNum) ||
                other.displayNum == displayNum) &&
            (identical(other.answerNum, answerNum) ||
                other.answerNum == answerNum) &&
            (identical(other.inputNum, inputNum) ||
                other.inputNum == inputNum) &&
            (identical(other.inputOperator, inputOperator) ||
                other.inputOperator == inputOperator) &&
            (identical(other.isDecimalPoint, isDecimalPoint) ||
                other.isDecimalPoint == isDecimalPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayNum, answerNum, inputNum,
      inputOperator, isDecimalPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorImplCopyWith<_$CalculatorImpl> get copyWith =>
      __$$CalculatorImplCopyWithImpl<_$CalculatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorImplToJson(
      this,
    );
  }
}

abstract class _Calculator extends Calculator {
  const factory _Calculator(
      {final double displayNum,
      final double answerNum,
      final double? inputNum,
      final String? inputOperator,
      final bool isDecimalPoint}) = _$CalculatorImpl;
  const _Calculator._() : super._();

  factory _Calculator.fromJson(Map<String, dynamic> json) =
      _$CalculatorImpl.fromJson;

  @override
  double get displayNum;
  @override
  double get answerNum;
  @override
  double? get inputNum;
  @override
  String? get inputOperator;
  @override
  bool get isDecimalPoint;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorImplCopyWith<_$CalculatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
