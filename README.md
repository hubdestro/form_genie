# 📋 Form Genie

**Form Genie** is an open-source Flutter library that allows you to dynamically generate fully functional forms from a JSON Schema or OpenAPI definition.

No more hardcoding your forms — just pass a schema and let Form Genie handle the UI, validation, and structure. Great for building admin panels, dynamic CRUD interfaces, or rapid prototyping tools.

---

## ✨ Features

- ⚙️ Generate form fields dynamically from JSON Schema
- ✅ Built-in validation (required, minLength, etc.)
- 🧩 Supports text, number, checkbox, and dropdown fields
- 💾 Returns form data as a clean JSON object on submit
- 🧪 Easily extendable with custom field types and styling

---

## 🚀 Getting Started

Add it to your `pubspec.yaml`:

```yaml
dependencies:
  form_genie: ^0.1.0
```

Then run:

```bash
flutter pub get
```

Import it:

```dart
import 'package:form_genie/form_genie.dart';
```

---

## 🧪 Example Usage

```dart
final jsonSchema = jsonEncode({
  "type": "object",
  "required": ["name", "age"],
  "properties": {
    "name": {"type": "string", "title": "Full Name"},
    "age": {"type": "number"},
    "subscribe": {"type": "boolean", "title": "Subscribe"},
    "gender": {"type": "string", "enum": ["Male", "Female"]}
  }
});

final fields = parseJsonSchema(jsonSchema);

FormGenie(
  fields: fields,
  onSubmit: (data) => print(data),
)
```

---

## 🔧 Supported Field Types

| JSON Type  | Field Type   | Widget                  |
|------------|--------------|--------------------------|
| string     | text         | `TextFormField`          |
| number     | number       | `TextFormField`          |
| boolean    | checkbox     | `CheckboxListTile`       |
| enum       | dropdown     | `DropdownButtonFormField`|

---

## 📌 Roadmap

- [ ] Nested field/object support
- [ ] Array inputs
- [ ] Date & file input types
- [ ] Theming support
- [ ] Export to PDF / printable view

---

## 📦 Installation

Available on [pub.dev](https://pub.dev/packages/form_genie).

---

## 🤝 Contributing

We welcome contributions from the community! Feel free to submit issues, suggest new features, or open pull requests.

---

## 🛡 License

Form Genie is licensed under the [Apache License 2.0](LICENSE). See the LICENSE file for details.

---

## 🤝 Collaborators
<img src="https://github.com/hubdestro.png" width=10% alt="hubdestro"/>
<img src="https://github.com/AkashSahnee07.png" width=10% alt="Akash"/>
<img src="https://github.com/Manali6421.png" width=10% alt="Manali"/>
