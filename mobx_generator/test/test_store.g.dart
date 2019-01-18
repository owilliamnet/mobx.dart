// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

class _$TestStore with TestStore {
  /// accessor
  Observable<String> _stringField;

  /// PLEASE NOTE: this is not duplicated code,
  /// we need let user know '$field' always can access underlay Observable(List)
  Observable<String> get $stringField => _stringField;

  @override
  set stringField(String stringField) => _stringField.value = stringField;

  String get stringField => _stringField.value;

  Observable<int> _intField;

  /// PLEASE NOTE: this is not duplicated code,
  /// we need let user know '$field' always can access underlay Observable(List)
  Observable<int> get $intField => _intField;

  @override
  set intField(int intField) => _intField.value = intField;

  int get intField => _intField.value;

  Observable<bool> _boolField;

  /// PLEASE NOTE: this is not duplicated code,
  /// we need let user know '$field' always can access underlay Observable(List)
  Observable<bool> get $boolField => _boolField;

  @override
  set boolField(bool boolField) => _boolField.value = boolField;

  bool get boolField => _boolField.value;

  Observable<double> _doubleField;

  /// PLEASE NOTE: this is not duplicated code,
  /// we need let user know '$field' always can access underlay Observable(List)
  Observable<double> get $doubleField => _doubleField;

  @override
  set doubleField(double doubleField) => _doubleField.value = doubleField;

  double get doubleField => _doubleField.value;

  /// computed
  Computed<String> _myStringField;
  Computed<String> get $myStringField => _myStringField;
  String get myStringField => _myStringField.value;

  Computed<int> _myIntField;
  Computed<int> get $myIntField => _myIntField;
  int get myIntField => _myIntField.value;

  Computed<bool> _myBoolField;
  Computed<bool> get $myBoolField => _myBoolField;
  bool get myBoolField => _myBoolField.value;

  Computed<double> _myDoubleField;
  Computed<double> get $myDoubleField => _myDoubleField;
  double get myDoubleField => _myDoubleField.value;

  /// constructor
  _$TestStore() {
    /// accessor
    _stringField = Observable(super.stringField);
    _intField = Observable(super.intField);
    _boolField = Observable(super.boolField);
    _doubleField = Observable(super.doubleField);

    /// set null to user-defined default value
    super.stringField = null;
    super.intField = null;
    super.boolField = null;
    super.doubleField = null;

    /// computed
    _myStringField = Computed<String>(() => super.myStringField);
    _myIntField = Computed<int>(() => super.myIntField);
    _myBoolField = Computed<bool>(() => super.myBoolField);
    _myDoubleField = Computed<double>(() => super.myDoubleField);
  }
}
