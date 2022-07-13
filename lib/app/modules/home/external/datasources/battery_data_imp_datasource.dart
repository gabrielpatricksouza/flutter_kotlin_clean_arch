import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mottu/app/core/acess_method_channel.dart';
import 'package:mottu/app/modules/home/domain/models/dtos/battery_data_dto.dart';
import '../../data/datasources/battery_data_datasource.dart';

final $BatteryDataImpDatasource = BindInject(
      (i) => BatteryDataImpDatasource(),
  isSingleton: true,
  isLazy: true,
);

class BatteryDataImpDatasource implements BatteryDataDatasource {

  @override
  Future<BatteryDataDto> call()async{
    try{
      final int result = await AcessMethodChannel.platform.invokeMethod('getBatteryData');
      return BatteryDataDto(true, '', result.toString());

    } on PlatformException catch(error){
      return BatteryDataDto(false, error.message, '');
    }
  }
}
  