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
  
  Observable<{{{genericType}}}> get \${{{fieldName}}} => _{{{fieldName}}};

  @override
  set {{{fieldName}}}({{{genericType}}} {{{fieldName}}}) => _{{{fieldName}}}.value = {{{fieldName}}};

  {{{genericType}}} get {{{fieldName}}} => _{{{fieldName}}}.value;
{{/isList}}
''';
