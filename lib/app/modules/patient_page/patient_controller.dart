import 'package:flutter_application/app/modules/models/patient_model.dart';
import 'package:flutter_application/app/modules/services/interfaces/patient_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'patient_controller.g.dart';

@Injectable()
class PatientController = _PatientControllerBase with _$PatientController;

abstract class _PatientControllerBase with Store {
  final PatientModel model;
  final IPatientService service;

  _PatientControllerBase(this.service, {@Data this.model}) {
    load();
  }

  @observable
  String gender;
  @observable
  String nameFirst;
  @observable
  String nameLast;
  @observable
  int locationStreetNumber;
  @observable
  String locationStreetName;
  @observable
  String locationCity;
  @observable
  String locationState;
  @observable
  String locationCountry;
  @observable
  String email;
  @observable
  String dobDate;
  @observable
  String phone;
  @observable
  String idValue;
  @observable
  String pictureLarge;
  @observable
  String nat;

  @observable
  bool loading = false;

  @action
  Future<void> load() async {
    loading = true;
    gender = model.gender;
    nameFirst = model.nameFirst;
    nameLast = model.nameLast;
    locationStreetNumber = model.locationStreetNumber;
    locationStreetName = model.locationStreetName;
    locationCity = model.locationCity;
    locationState = model.locationState;
    locationCountry = model.locationCountry;
    email = model.email;
    dobDate = model.dobDate;
    phone = model.phone;
    idValue = model.idValue;
    pictureLarge = model.pictureLarge;
    nat = model.nat;
    loading = false;
  }
}
