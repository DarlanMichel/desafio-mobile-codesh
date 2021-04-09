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

  List<String> filterGender = ["Masculino", "Feminino", "Ambos"];

  @observable
  String gender;

  @action
  selecGender(String _gender) async {
    switch (_gender) {
      case "Masculino":
        gender = "male";
        page = 1;
        textNat == null ? await specificGender() : await specific();
        break;
      case "Feminino":
        gender = "female";
        page = 1;
        textNat == null ? await specificGender() : await specific();
        break;
      case "Ambos":
        gender = null;
        page = 1;
        textNat == null ? await load() : await specificNat();
        break;
    }
  }

  @action
  Future<void> specificGender() async {
    loading = true;
    await Future.delayed(Duration(seconds: 1));
    listPatient = await repository.getGender(page, gender).asObservable();
    loading = false;
  }

  @observable
  String textNat;

  @action
  void setNat(_textNat) async {
    textNat = _textNat;
    page = 1; 
    if (textNat == 'au' ||
        textNat == 'br' ||
        textNat == 'ca' ||
        textNat == 'ch' ||
        textNat == 'de' ||
        textNat == 'dk' ||
        textNat == 'es' ||
        textNat == 'fi' ||
        textNat == 'fr' ||
        textNat == 'gb' ||
        textNat == 'ie' ||
        textNat == 'ir' ||
        textNat == 'no' ||
        textNat == 'nl' ||
        textNat == 'nz' ||
        textNat == 'tr' ||
        textNat == 'us') {
          gender == null ? await specificNat() : await specific();
        }
  }

  @action
  Future<void> specificNat() async {
    loading = true;
    await Future.delayed(Duration(seconds: 1));
    listPatient = await repository.getNat(page, textNat).asObservable();
    loading = false;
  }

  @action
  Future<void> specific() async {
    loading = true;
    await Future.delayed(Duration(seconds: 1));
    listPatient =
        await repository.getEspecific(page, gender, textNat).asObservable();
    loading = false;
  }
}
