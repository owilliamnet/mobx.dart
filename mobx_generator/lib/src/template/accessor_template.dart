const accessor_template = '''
{{#isList}}
  ObservableList<{{{genericType}}}> _{{{fieldName}}};
  
  ObservableList<{{{genericType}}}> get \${{{fieldName}}} => _{{{fieldName}}};

  @override
  set {{{fieldName}}}(List<{{{genericType}}}> {{{fieldName}}}) {
    _{{{fieldName}}}..clear()..addAll({{{fieldName}}});
  }

  ObservableList<{{{genericType}}}> get {{{fieldName}}} => _{{{fieldName}}};
{{/isList}}
{{^isList}}
  Observable<{{{genericType}}}> _{{{fieldName}}};
  
  /// PLEASE NOTE: this is not duplicated code, 
  /// we need let user know '\$field' always can access underlay Observable(List)
  Observable<{{{genericType}}}> get \${{{fieldName}}} => _{{{fieldName}}};

  @override
  set {{{fieldName}}}({{{genericType}}} {{{fieldName}}}) => _{{{fieldName}}}.value = {{{fieldName}}};

  {{{genericType}}} get {{{fieldName}}} => _{{{fieldName}}}.value;
{{/isList}}
''';
