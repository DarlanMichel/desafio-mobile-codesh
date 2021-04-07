import 'package:dio/dio.dart';
import 'package:flutter_application/app/modules/models/patient_model.dart';
import 'package:flutter_application/app/modules/repositories/interfaces/patient_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'patient_repository.g.dart';

@Injectable()
class PatientRepository implements IPatientRepository {
  final Dio dio;

  PatientRepository(this.dio);

  @override
  void dispose() {}

  @override
  Future<List<PatientModel>> getPatient() async {
    try {
      var response = await dio.get('?results=50');
      var result = (response.data['results'] as List).map((json) {
      return PatientModel.fromJson(json);
      }).toList();

      return result;
    } on DioError catch (e) {
      return e.response.data;
    }
  }
}
