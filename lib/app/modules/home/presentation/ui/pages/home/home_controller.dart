import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:mottu/app/modules/home/domain/models/dtos/battery_data_dto.dart';
import 'package:mottu/app/modules/home/domain/usecases/battery_data_usecase.dart';

part 'home_controller.g.dart';

// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors
final $HomeController = BindInject(
  (i) => HomeController(
    i.get(),
  ),
  isSingleton: true,
  isLazy: true,
);

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final BatteryDataUsecase batteryDataUsecase;
  _HomeController(this.batteryDataUsecase);


  @observable
  BatteryDataDto? batteryDataDto;

  @action
  getBatteryData()async=>batteryDataDto = await batteryDataUsecase();
}
