/// You must include mobx dependency
import 'package:mobx/mobx.dart';
import 'package:mobx_generator/mobx_generator.dart';

part 'mobx_generator_example.g.dart';

@store
class MyStore {
  /// You must include these code to make it work
  factory MyStore() {
    return _$MyStore();
  }

  @observable
  String nickname = 'patrick';

  @observable
  int age = 10;

  @observable
  bool fromEarth = true;

  @observable
  Gender gender = Gender.male;

  @observable
  List<String> favoriteColorList = [
    'red',
    'blue',
    'yellow',
  ];

  @computed
  bool get isUnderAge {
    return age < 18 ? true : false;
  }

  @computed
  List<String> get prefixedFavoriteColorList {
    return favoriteColorList.map((color) => 'my-${color}');
  }
}

enum Gender {
  male,
  female,
}
