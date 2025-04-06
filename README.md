📋 Form Genie
=============

**Form Genie** is an open-source Flutter library that allows you to dynamically generate fully functional forms from a JSON Schema or OpenAPI definition.

No more hardcoding your forms — just pass a schema and let Form Genie handle the UI, validation, and structure. Great for building admin panels, dynamic CRUD interfaces, or rapid prototyping tools.

✨ Features
----------

*   ⚙️ Generate form fields dynamically from JSON Schema

*   ✅ Built-in validation (required, minLength, etc.)

*   🧩 Supports text, number, checkbox, and dropdown fields

*   💾 Returns form data as a clean JSON object on submit

*   🧪 Easily extendable with custom field types and styling


🚀 Getting Started
------------------

Add it to your pubspec.yaml:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   dependencies:    form_genie: ^0.1.0   `

Then run:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   flutter pub get   `

Import it:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   import 'package:form_genie/form_genie.dart';   `

🧪 Example Usage
----------------

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   final jsonSchema = jsonEncode({    "type": "object",    "required": ["name", "age"],    "properties": {      "name": {"type": "string", "title": "Full Name"},      "age": {"type": "number"},      "subscribe": {"type": "boolean", "title": "Subscribe"},      "gender": {"type": "string", "enum": ["Male", "Female"]}    }  });  final fields = parseJsonSchema(jsonSchema);  FormGenie(    fields: fields,    onSubmit: (data) => print(data),  )   `

🔧 Supported Field Types
------------------------

JSON TypeField TypeWidgetstringtextTextFormFieldnumbernumberTextFormFieldbooleancheckboxCheckboxListTileenumdropdownDropdownButtonFormField

📌 Roadmap
----------

📦 Installation
---------------

Available on [pub.dev](https://pub.dev/packages/form_genie).

🤝 Contributing
---------------

We welcome contributions from the community! Feel free to submit issues, suggest new features, or open pull requests.

🛡 License
----------

Form Genie is licensed under the Apache License 2.0. See the LICENSE file for details.

👤 Author
---------

**Form Genie** is developed and maintained by Hubdestro. If you use or enjoy the package, feel free to ⭐️ the repo and spread the word!