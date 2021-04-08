// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PatientController = BindInject(
  (i) => PatientController(i<IPatientService>(), model: i.args.data),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatientController on _PatientControllerBase, Store {
  final _$genderAtom = Atom(name: '_PatientControllerBase.gender');

  @override
  String get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$nameFirstAtom = Atom(name: '_PatientControllerBase.nameFirst');

  @override
  String get nameFirst {
    _$nameFirstAtom.reportRead();
    return super.nameFirst;
  }

  @override
  set nameFirst(String value) {
    _$nameFirstAtom.reportWrite(value, super.nameFirst, () {
      super.nameFirst = value;
    });
  }

  final _$nameLastAtom = Atom(name: '_PatientControllerBase.nameLast');

  @override
  String get nameLast {
    _$nameLastAtom.reportRead();
    return super.nameLast;
  }

  @override
  set nameLast(String value) {
    _$nameLastAtom.reportWrite(value, super.nameLast, () {
      super.nameLast = value;
    });
  }

  final _$locationStreetNumberAtom =
      Atom(name: '_PatientControllerBase.locationStreetNumber');

  @override
  int get locationStreetNumber {
    _$locationStreetNumberAtom.reportRead();
    return super.locationStreetNumber;
  }

  @override
  set locationStreetNumber(int value) {
    _$locationStreetNumberAtom.reportWrite(value, super.locationStreetNumber,
        () {
      super.locationStreetNumber = value;
    });
  }

  final _$locationStreetNameAtom =
      Atom(name: '_PatientControllerBase.locationStreetName');

  @override
  String get locationStreetName {
    _$locationStreetNameAtom.reportRead();
    return super.locationStreetName;
  }

  @override
  set locationStreetName(String value) {
    _$locationStreetNameAtom.reportWrite(value, super.locationStreetName, () {
      super.locationStreetName = value;
    });
  }

  final _$locationCityAtom = Atom(name: '_PatientControllerBase.locationCity');

  @override
  String get locationCity {
    _$locationCityAtom.reportRead();
    return super.locationCity;
  }

  @override
  set locationCity(String value) {
    _$locationCityAtom.reportWrite(value, super.locationCity, () {
      super.locationCity = value;
    });
  }

  final _$locationStateAtom =
      Atom(name: '_PatientControllerBase.locationState');

  @override
  String get locationState {
    _$locationStateAtom.reportRead();
    return super.locationState;
  }

  @override
  set locationState(String value) {
    _$locationStateAtom.reportWrite(value, super.locationState, () {
      super.locationState = value;
    });
  }

  final _$locationCountryAtom =
      Atom(name: '_PatientControllerBase.locationCountry');

  @override
  String get locationCountry {
    _$locationCountryAtom.reportRead();
    return super.locationCountry;
  }

  @override
  set locationCountry(String value) {
    _$locationCountryAtom.reportWrite(value, super.locationCountry, () {
      super.locationCountry = value;
    });
  }

  final _$emailAtom = Atom(name: '_PatientControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$dobDateAtom = Atom(name: '_PatientControllerBase.dobDate');

  @override
  String get dobDate {
    _$dobDateAtom.reportRead();
    return super.dobDate;
  }

  @override
  set dobDate(String value) {
    _$dobDateAtom.reportWrite(value, super.dobDate, () {
      super.dobDate = value;
    });
  }

  final _$phoneAtom = Atom(name: '_PatientControllerBase.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$idValueAtom = Atom(name: '_PatientControllerBase.idValue');

  @override
  String get idValue {
    _$idValueAtom.reportRead();
    return super.idValue;
  }

  @override
  set idValue(String value) {
    _$idValueAtom.reportWrite(value, super.idValue, () {
      super.idValue = value;
    });
  }

  final _$pictureLargeAtom = Atom(name: '_PatientControllerBase.pictureLarge');

  @override
  String get pictureLarge {
    _$pictureLargeAtom.reportRead();
    return super.pictureLarge;
  }

  @override
  set pictureLarge(String value) {
    _$pictureLargeAtom.reportWrite(value, super.pictureLarge, () {
      super.pictureLarge = value;
    });
  }

  final _$natAtom = Atom(name: '_PatientControllerBase.nat');

  @override
  String get nat {
    _$natAtom.reportRead();
    return super.nat;
  }

  @override
  set nat(String value) {
    _$natAtom.reportWrite(value, super.nat, () {
      super.nat = value;
    });
  }

  final _$loadingAtom = Atom(name: '_PatientControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loadAsyncAction = AsyncAction('_PatientControllerBase.load');

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  @override
  String toString() {
    return '''
gender: ${gender},
nameFirst: ${nameFirst},
nameLast: ${nameLast},
locationStreetNumber: ${locationStreetNumber},
locationStreetName: ${locationStreetName},
locationCity: ${locationCity},
locationState: ${locationState},
locationCountry: ${locationCountry},
email: ${email},
dobDate: ${dobDate},
phone: ${phone},
idValue: ${idValue},
pictureLarge: ${pictureLarge},
nat: ${nat},
loading: ${loading}
    ''';
  }
}
