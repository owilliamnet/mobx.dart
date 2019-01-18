// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

class _$TestStore with TestStore {
  /// accessor
  Observable<String> _stringField;

  @override
  set stringField(String stringField) => _stringField.value = stringField;

  String get stringField => _stringField.value;

  Observable<int> _intField;

  @override
  set intField(int intField) => _intField.value = intField;

  int get intField => _intField.value;

  Observable<bool> _boolField;

  @override
  set boolField(bool boolField) => _boolField.value = boolField;

  bool get boolField => _boolField.value;

  Observable<double> _doubleField;

  @override
  set doubleField(double doubleField) => _doubleField.value = doubleField;

  double get doubleField => _doubleField.value;

  /// computed
  Computed<String> _myStringField;
  String get myStringField => _myStringField.value;

  Computed<int> _myIntField;
  int get myIntField => _myIntField.value;

  Computed<bool> _myBoolField;
  bool get myBoolField => _myBoolField.value;

  Computed<double> _myDoubleField;
  double get myDoubleField => _myDoubleField.value;

  /// constructor
  _$TestStore() {
    /// accessor
    _stringField = Observable(super.stringField);
    _intField = Observable(super.intField);
    _boolField = Observable(super.boolField);
    _doubleField = Observable(super.doubleField);

    /// computed
    _myStringField = Computed<String>(() => super.myStringField);
    _myIntField = Computed<int>(() => super.myIntField);
    _myBoolField = Computed<bool>(() => super.myBoolField);
    _myDoubleField = Computed<double>(() => super.myDoubleField);
  }
}
