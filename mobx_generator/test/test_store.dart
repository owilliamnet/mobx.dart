import 'package:mobx_generator/mobx_generator.dart';
import 'package:mobx/mobx.dart';

part 'test_store.g.dart';

@store
class TestStore {
  @observable
  String stringField = 'default-string';

  @computed
  String get myStringField => 'my-$stringField';

  @observable
  int intField = 1;

  @computed
  int get myIntField => -1 * intField;

  @observable
  bool boolField = false;

  @computed
  bool get myBoolField => !boolField;

  @observable
  double doubleField = 1.1;

  @computed
  double get myDoubleField => -1 * doubleField;

  factory TestStore() {
    return _$TestStore();
  }
}

enum TestEnum {
  TEST1,
  TEST2,
}
