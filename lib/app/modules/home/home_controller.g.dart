// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<IPatientRepository>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$listPatientAtom = Atom(name: '_HomeControllerBase.listPatient');

  @override
  List<PatientModel> get listPatient {
    _$listPatientAtom.reportRead();
    return super.listPatient;
  }

  @override
  set listPatient(List<PatientModel> value) {
    _$listPatientAtom.reportWrite(value, super.listPatient, () {
      super.listPatient = value;
    });
  }

  final _$pageAtom = Atom(name: '_HomeControllerBase.page');

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

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

  final _$genderAtom = Atom(name: '_HomeControllerBase.gender');

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

  final _$textNatAtom = Atom(name: '_HomeControllerBase.textNat');

  @override
  String get textNat {
    _$textNatAtom.reportRead();
    return super.textNat;
  }

  @override
  set textNat(String value) {
    _$textNatAtom.reportWrite(value, super.textNat, () {
      super.textNat = value;
    });
  }

  final _$loadAsyncAction = AsyncAction('_HomeControllerBase.load');

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  final _$selecGenderAsyncAction =
      AsyncAction('_HomeControllerBase.selecGender');

  @override
  Future selecGender(String _gender) {
    return _$selecGenderAsyncAction.run(() => super.selecGender(_gender));
  }

  final _$specificGenderAsyncAction =
      AsyncAction('_HomeControllerBase.specificGender');

  @override
  Future<void> specificGender() {
    return _$specificGenderAsyncAction.run(() => super.specificGender());
  }

  final _$specificNatAsyncAction =
      AsyncAction('_HomeControllerBase.specificNat');

  @override
  Future<void> specificNat() {
    return _$specificNatAsyncAction.run(() => super.specificNat());
  }

  final _$specificAsyncAction = AsyncAction('_HomeControllerBase.specific');

  @override
  Future<void> specific() {
    return _$specificAsyncAction.run(() => super.specific());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  String setNat(dynamic _textNat) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setNat');
    try {
      return super.setNat(_textNat);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPatient: ${listPatient},
page: ${page},
loading: ${loading},
gender: ${gender},
textNat: ${textNat}
    ''';
  }
}
