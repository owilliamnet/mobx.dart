const computed_template = '''
  Computed<{{{genericType}}}> _{{{fieldName}}};
  
  {{{genericType}}} get {{{fieldName}}} => _{{{fieldName}}}.value;
''';
