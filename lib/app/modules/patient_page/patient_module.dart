import 'package:flutter_application/app/modules/patient_page/patient_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PatientModule extends Module {
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => PatientPage()),
  ];

}