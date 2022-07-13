import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/models/dtos/battery_data_dto.dart';
import '../../domain/repositories/battery_data_repository.dart';
import '../datasources/battery_data_datasource.dart';

final $BatteryDataImpRepository = BindInject(
      (i) => BatteryDataImpRepository(i()),
  isSingleton: true,
  isLazy: true,
);

class BatteryDataImpRepository implements BatteryDataRepository {
  final BatteryDataDatasource _batteryDataImpDatasource;
  BatteryDataImpRepository(this._batteryDataImpDatasource);

  @override
  Future<BatteryDataDto> call() {
    try {
      return _batteryDataImpDatasource();
    }catch (exception) {
      throw Exception();
    }
  }
}
  
  