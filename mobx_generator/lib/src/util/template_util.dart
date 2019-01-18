import 'package:analyzer/dart/element/element.dart';

class TemplateUtil {
  static List<Map<String, dynamic>> getAccessorFieldTemplateList(List<FieldElement> fieldList) {
    return fieldList.map((item) {
      String rawGenericType = item.type.toString();
      bool isList = item.type.name == 'List';
      String genericType = isList
          ? item.type.toString().substring(5, rawGenericType.length - 1)
          : item.type.toString();

      return {
        'fieldName': item.name,
        'genericType': genericType,
        'isList': isList,
      };
    }).toList();
  }

  static List<Map<String, dynamic>> getComputedFieldTemplateList(List<FieldElement> fieldList) {
    return fieldList.map((item) {
      return {
        'fieldName': item.name,
        'genericType': item.type.toString(),
      };
    }).toList();
  }
}
