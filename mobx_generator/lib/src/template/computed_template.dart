const computed_template = '''
  Computed<{{{genericType}}}> _{{{fieldName}}};
  
  /// PLEASE NOTE: this is not duplicated code, 
  /// we need let user know '\$field' always can access underlaying Observable(List)
  Computed<{{{genericType}}}> get \${{{fieldName}}} => _{{{fieldName}}};
  
  {{{genericType}}} get {{{fieldName}}} => _{{{fieldName}}}.value;
''';
