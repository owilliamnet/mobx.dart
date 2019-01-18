// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_generator_simplest_example.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

class _$MySimplestStore with MySimplestStore {
  /// accessor
  Observable<String> _hi;

  /// PLEASE NOTE: this is not duplicated code,
  /// we need let user know '$field' always can access underlay Observable(List)
  Observable<String> get $hi => _hi;

  @override
  set hi(String hi) => _hi.value = hi;

  String get hi => _hi.value;

  /// computed
  Computed<String> _greeting;
  Computed<String> get $greeting => _greeting;
  String get greeting => _greeting.value;

  /// constructor
  _$MySimplestStore() {
    /// accessor
    _hi = Observable(super.hi);

    /// set null to user-defined default value
    super.hi = null;

    /// computed
    _greeting = Computed<String>(() => super.greeting);
  }
}
