// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_generator_example.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

class _$MyStore with MyStore {
  /// accessor
  Observable<String> _nickname;
  Observable<String> get $nickname => _nickname;

  @override
  set nickname(String nickname) => _nickname.value = nickname;

  String get nickname => _nickname.value;

  Observable<int> _age;
  Observable<int> get $age => _age;

  @override
  set age(int age) => _age.value = age;

  int get age => _age.value;

  Observable<bool> _fromEarth;
  Observable<bool> get $fromEarth => _fromEarth;

  @override
  set fromEarth(bool fromEarth) => _fromEarth.value = fromEarth;

  bool get fromEarth => _fromEarth.value;

  Observable<Gender> _gender;
  Observable<Gender> get $gender => _gender;

  @override
  set gender(Gender gender) => _gender.value = gender;

  Gender get gender => _gender.value;

  ObservableList<String> _favoriteColorList;
  ObservableList<String> get $favoriteColorList => _favoriteColorList;

  @override
  set favoriteColorList(List<String> favoriteColorList) {
    _favoriteColorList
      ..clear()
      ..addAll(favoriteColorList);
  }

  ObservableList<String> get favoriteColorList => _favoriteColorList;

  /// computed
  Computed<bool> _isUnderAge;
  bool get isUnderAge => _isUnderAge.value;

  Computed<List<String>> _prefixedFavoriteColorList;
  List<String> get prefixedFavoriteColorList =>
      _prefixedFavoriteColorList.value;

  /// constructor
  _$MyStore() {
    /// accessor
    _nickname = Observable(super.nickname);
    _age = Observable(super.age);
    _fromEarth = Observable(super.fromEarth);
    _gender = Observable(super.gender);
    _favoriteColorList = ObservableList.of(super.favoriteColorList ?? []);

    /// set null to user-defined default value
    super.nickname = null;
    super.age = null;
    super.fromEarth = null;
    super.gender = null;
    super.favoriteColorList = null;

    /// computed
    _isUnderAge = Computed<bool>(() => super.isUnderAge);
    _prefixedFavoriteColorList =
        Computed<List<String>>(() => super.prefixedFavoriteColorList);
  }
}
