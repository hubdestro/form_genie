import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:form_genie/src/form_field_meta.dart';

class FormGenie extends StatefulWidget {
  final dynamic model;
  final Map<String, FormFieldMeta>? fieldMeta;
  final void Function(Map<String, dynamic>) onSubmit;

  const FormGenie.auto({
    super.key,
    required this.model,
    required this.onSubmit,
    this.fieldMeta,
  });

  @override
  State<FormGenie> createState() => _FormGenieState();
}

class _FormGenieState extends State<FormGenie> {
  final Map<String, TextEditingController> controllers = {};

  @override
  void initState() {
    super.initState();

    final json = jsonDecode(jsonEncode(widget.model)) as Map<String, dynamic>;
    for (var field in json.keys) {
      controllers[field] =
          TextEditingController(text: json[field]?.toString() ?? '');
    }
  }

  @override
  Widget build(BuildContext context) {
    final json = jsonDecode(jsonEncode(widget.model)) as Map<String, dynamic>;
    final fields = <Widget>[];

    json.forEach((key, value) {
      final meta = widget.fieldMeta?[key] ??
          FormFieldMeta(label: _beautifyLabel(key), type: 'text');

      fields.add(TextFormField(
        controller: controllers[key],
        obscureText: meta.type == 'password',
        decoration: InputDecoration(
          labelText: meta.label,
          hintText: meta.hint ?? '',
        ),
      ));
    });

    return Column(
      children: [
        ...fields,
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            final data = {
              for (var entry in controllers.entries) entry.key: entry.value.text
            };
            widget.onSubmit(data);
          },
          child: const Text("Submit"),
        ),
      ],
    );
  }

  String _beautifyLabel(String key) {
    return key[0].toUpperCase() + key.substring(1).replaceAll('_', ' ');
  }
}
