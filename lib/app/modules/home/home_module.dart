 import 'package:flutter_application/app/modules/home/home_controller.dart';
import 'package:flutter_application/app/modules/patient_page/patient_controller.dart';
import 'package:flutter_application/app/modules/patient_page/patient_page.dart';
import 'package:flutter_application/app/modules/repositories/patient_repository.dart';
import 'package:flutter_application/app/modules/services/patient_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
 
 import 'home_page.dart';
  
 class HomeModule extends Module {
   @override
   final List<Bind> binds = [
    $HomeController,
    $PatientController,
    $PatientService,
    $PatientRepository
  ];
 
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage(), transition: TransitionType.fadeIn),
    ChildRoute('/patient', child: (_, args) => PatientPage(model: args.data,), transition: TransitionType.fadeIn)
  ];
 }