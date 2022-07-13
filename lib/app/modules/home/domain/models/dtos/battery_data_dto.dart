import 'package:mottu/app/modules/home/domain/models/entities/battery_data_entity.dart';

class BatteryDataDto extends BatteryDataEntity {
  BatteryDataDto(
    bool? sucess,
    String? message,
    String? batteryData,
  ) : super(sucess: sucess, message: message, batteryData: batteryData);
}
