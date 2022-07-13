import '../models/dtos/battery_data_dto.dart';

abstract class BatteryDataRepository {
  Future<BatteryDataDto> call();
}
  