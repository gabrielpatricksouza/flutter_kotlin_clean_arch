import '../models/dtos/battery_data_dto.dart';

abstract class BatteryDataUsecase {
  Future<BatteryDataDto>  call();
}
  