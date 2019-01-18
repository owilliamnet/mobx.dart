import 'package:test/test.dart';

import 'test_store.dart';

TestStore testStore = TestStore();

void main() {
  group('@observable on primitive', () {
    test('default value', () {
      expect(testStore.stringField, 'default-string');
    });

    test('basic usage (set and get)', () {
      testStore.stringField = 'test-string';
      expect(testStore.stringField, 'test-string');
    });

//    test('observable type', () {
//
//    });
  });
}
