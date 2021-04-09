import 'package:flutter_application/app/modules/models/patient_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IPatientService implements Disposable {
  Future<List<PatientModel>> getPatient(int page);
  Future<List<PatientModel>> getGender(int page, String gender);
  Future<List<PatientModel>> getNat(int page, String nat);
  Future<List<PatientModel>> getEspecific(int page, String gender, String nat);
}
