import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:mobx_generator/src/annotation/store.dart';
import 'package:mobx_generator/src/template/store_template.dart';
import 'package:mobx_generator/src/util/field_util.dart';
import 'package:mobx_generator/src/util/template_util.dart';
import 'package:source_gen/source_gen.dart';
import 'package:mustache4dart/mustache4dart.dart';

class StoreGenerator extends GeneratorForAnnotation<Store> {
//  static LombokCollector collector = LombokCollector();

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    assert(element is ClassElement, '[mobx_generator]@store should use only on class');

    ClassElement el = element;
    String className = el.name;
    List<FieldElement> fieldList = el.fields;
    List<FieldElement> observedFieldList = FieldUtil.getObservableFieldList(fieldList);
    List<FieldElement> computedFieldList = FieldUtil.getComputedFieldList(fieldList);

    return render(
      store_template,
      <String, dynamic>{
        'className': className,
        'accessorList': TemplateUtil.getAccessorFieldTemplateList(observedFieldList),
        'computedList': TemplateUtil.getComputedFieldTemplateList(computedFieldList),
      },
    );
  }
}
