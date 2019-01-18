/// You must include mobx dependency
import 'package:mobx/mobx.dart';
import 'package:mobx_generator/mobx_generator.dart';

part 'mobx_generator_simplest_example.g.dart';

@store
class MySimplestStore {
  /// You must include these code to make it work
  factory MySimplestStore() {
    return _$MySimplestStore();
  }

  @observable
  String hi = 'hello';

  @computed
  String get greeting => '$hi, everybody';
}
