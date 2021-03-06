import 'package:dio/dio.dart';
import 'package:flutter_application/app/modules/home/home_controller.dart';
import 'package:flutter_application/app/modules/home/home_page.dart';
import 'package:flutter_application/app/modules/patient_page/patient_controller.dart';
import 'package:flutter_application/app/modules/patient_page/patient_page.dart';
import 'package:flutter_application/app/modules/repositories/patient_repository.dart';
import 'package:flutter_application/app/modules/services/patient_service.dart';
import 'package:flutter_application/app/modules/splash/splash_module.dart';
import 'package:flutter_application/app/modules/utils/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $HomeController,
    $PatientRepository,
    $PatientService,
    $PatientController,
    Bind((i) => Dio(BaseOptions(
      baseUrl: URL_BASE,
      connectTimeout: 5000,)))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule(), transition: TransitionType.fadeIn),
    ChildRoute('/home', child: (_, args) => HomePage(), transition: TransitionType.fadeIn),
    ChildRoute('/patient', child: (_, args) => PatientPage(model: args.data,), transition: TransitionType.fadeIn),
  ];

}