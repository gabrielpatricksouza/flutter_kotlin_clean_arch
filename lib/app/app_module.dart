import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/data/repositories/battery_data_imp_repository.dart';
import 'modules/home/domain/usecases/battery_data_imp_usecase.dart';
import 'modules/home/external/datasources/battery_data_imp_datasource.dart';
import 'modules/home/home_module.dart';
import 'modules/home/presentation/ui/pages/home/home_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $HomeController,
    $BatteryDataImpUsecase,
    $BatteryDataImpRepository,
    $BatteryDataImpDatasource,
  ];

  @override
  List<Module> imports = [
    HomeModule(),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];

}