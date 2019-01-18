import 'package:mobx_generator/src/template/computed_template.dart';
import 'package:mobx_generator/src/template/constructor_template.dart';

import 'accessor_template.dart';

const store_template = '''
class _\${{{className}}} with {{{className}}} {
  /// accessor
  {{#accessorList}}
$accessor_template
  {{/accessorList}}
  
  /// computed
  {{#computedList}}
$computed_template
  {{/computedList}}
  
  /// constructor
$constructor_template
}
''';
