import 'package:flutter_application/app/modules/models/patient_model.dart';
import 'package:flutter_application/app/modules/repositories/interfaces/patient_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IPatientRepository repository;

  _HomeControllerBase(this.repository) {
    load();
  }

  @observable
  List<PatientModel> listPatient;

  @observable
  int page = 1;

  @observable
  bool loading = false;

  @action
  Future<void> load() async {
    loading = true;
    await Future.delayed(Duration(seconds: 1));
    listPatient = await repository.getPatient(page).asObservable();
    loading = false;
  }

}
