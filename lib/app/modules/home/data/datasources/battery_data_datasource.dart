import '../../domain/models/dtos/battery_data_dto.dart';

abstract class BatteryDataDatasource {
  Future<BatteryDataDto> call();
}
