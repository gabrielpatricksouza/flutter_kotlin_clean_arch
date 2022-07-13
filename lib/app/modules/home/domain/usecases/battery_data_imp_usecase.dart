import 'package:flutter_modular/flutter_modular.dart';

import '../models/dtos/battery_data_dto.dart';
import '../repositories/battery_data_repository.dart';
import 'battery_data_usecase.dart';

final $BatteryDataImpUsecase = BindInject(
      (i) => BatteryDataImpUsecase(i()),
  isSingleton: true,
  isLazy: true,
);

class BatteryDataImpUsecase implements BatteryDataUsecase {
  final BatteryDataRepository _batteryDataRepository;
  BatteryDataImpUsecase(this._batteryDataRepository);

  @override
  Future<BatteryDataDto>  call() {
    return _batteryDataRepository();
  }
}
  