// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeController, Store {
  late final _$batteryDataDtoAtom =
      Atom(name: '_HomeController.batteryDataDto', context: context);

  @override
  BatteryDataDto? get batteryDataDto {
    _$batteryDataDtoAtom.reportRead();
    return super.batteryDataDto;
  }

  @override
  set batteryDataDto(BatteryDataDto? value) {
    _$batteryDataDtoAtom.reportWrite(value, super.batteryDataDto, () {
      super.batteryDataDto = value;
    });
  }

  late final _$getBatteryDataAsyncAction =
      AsyncAction('_HomeController.getBatteryData', context: context);

  @override
  Future getBatteryData() {
    return _$getBatteryDataAsyncAction.run(() => super.getBatteryData());
  }

  @override
  String toString() {
    return '''
batteryDataDto: ${batteryDataDto}
    ''';
  }
}
