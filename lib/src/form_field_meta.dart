class FormFieldMeta {
  final String label;
  final String? hint;
  final String? type;
  final bool required;

  const FormFieldMeta({
    required this.label,
    this.hint,
    this.type,
    this.required = false,
  });
}
