const constructor_template = '''
  _\${{{className}}}() {
    /// accessor
    {{#accessorList}}
      {{#isList}}
    _{{{fieldName}}} = ObservableList.of(super.{{{fieldName}}} ?? []);
      {{/isList}}
      {{^isList}}
    _{{{fieldName}}} = Observable(super.{{{fieldName}}});
      {{/isList}}
    {{/accessorList}}
    
    /// set null to user-defined default value
    {{#accessorList}}
    super.{{{fieldName}}} = null;
    {{/accessorList}}
    
    /// computed
    {{#computedList}}
    _{{{fieldName}}} = Computed<{{{genericType}}}>(() => super.{{{fieldName}}});
    {{/computedList}}
  }
''';
