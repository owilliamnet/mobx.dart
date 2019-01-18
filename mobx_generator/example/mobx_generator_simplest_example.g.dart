// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_generator_simplest_example.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

class _$MySimplestStore with MySimplestStore {
  /// accessor
  Observable<String> _hi;

  @override
  set hi(String hi) => _hi.value = hi;

  String get hi => _hi.value;

  /// computed
  Computed<String> _greeting;
  String get greeting => _greeting.value;

  /// constructor
  _$MySimplestStore() {
    /// accessor
    _hi = Observable(super.hi);

    /// computed
    _greeting = Computed<String>(() => super.greeting);
  }
}
