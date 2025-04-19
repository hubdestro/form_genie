import 'package:example/login_request.dart';
import 'package:flutter/material.dart';
import 'package:form_genie/form_genie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormGenie Auto',
      home: Scaffold(
        appBar: AppBar(title: const Text('FormGenie Auto Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormGenie.auto(
            model: LoginRequest(),
            fieldMeta: {
              'email':
                  FormFieldMeta(label: 'Email Address', hint: 'Enter email'),
              'password': FormFieldMeta(
                  label: 'Password', type: 'password', required: true),
            },
            onSubmit: (data) {
              print("Form Submitted: \$data");
            },
          ),
        ),
      ),
    );
  }
}
