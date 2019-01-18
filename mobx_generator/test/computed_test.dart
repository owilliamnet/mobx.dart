import 'package:test/test.dart';

import 'test_store.dart';

TestStore testStore = TestStore();

void main() {
  group('@computed on primitive', () {
    test('default value', () {
      expect(testStore.myStringField, 'my-default-string');
    });

    test('basic usage (set and get)', () {
      testStore.stringField = 'test-string';
      expect(testStore.myStringField, 'my-test-string');
    });
  });
}
