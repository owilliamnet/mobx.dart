import 'package:analyzer/dart/element/element.dart';
import 'package:mobx_generator/src/annotation/computed.dart';
import 'package:mobx_generator/src/annotation/observable.dart';
import 'package:mobx_generator/src/util/metadata_util.dart';

class FieldUtil {
  static isMutable(FieldElement field) {
    return !field.isFinal && !field.isConst;
  }

  static List<FieldElement> getMutableFieldList(List<FieldElement> fieldList) {
    return fieldList.where((field) => isMutable(field)).toList();
  }

  static List<FieldElement> getFieldListByType(List<FieldElement> fieldList, Type type) {
    return fieldList
        .where((field) => isMutable(field))
        .where((field) => field.metadata.any((meta) => MetadataUtil.isType(meta, type)))
        .toList();
  }

  static List<FieldElement> getFieldListByGetterType(List<FieldElement> fieldList, Type type) {
    return fieldList
        .where((field) => field.getter.metadata.any((meta) => MetadataUtil.isType(meta, type)))
        .toList();
  }

  static List<FieldElement> getObservableFieldList(List<FieldElement> fieldList) {
    return getFieldListByType(fieldList, $Observable);
  }

  static List<FieldElement> getComputedFieldList(List<FieldElement> fieldList) {
    return getFieldListByGetterType(fieldList, $Computed);
  }
}
