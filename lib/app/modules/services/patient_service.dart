import 'package:flutter_application/app/modules/models/patient_model.dart';
import 'package:flutter_application/app/modules/repositories/interfaces/patient_repository_interface.dart';
import 'package:flutter_application/app/modules/services/interfaces/patient_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'patient_service.g.dart';

@Injectable()
class PatientService implements IPatientService {
  final IPatientRepository patientRepository;

  PatientService(this.patientRepository);

  @override
  void dispose() {}

  @override
  Future<List<PatientModel>> getPatient() {
    return patientRepository.getPatient();
  }
}