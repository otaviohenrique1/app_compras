import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatelessWidget {
  const CampoTexto({
    super.key,
    this.keyboardType,
    this.labelText,
    this.obscureText,
    this.initialValue,
    this.hintText,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.controller,
    this.inputFormatters,
  });

  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      initialValue: initialValue,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      inputFormatters: inputFormatters,
      obscureText: (obscureText == null) ? false : obscureText!,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
