import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  const CampoTexto({
    super.key,
    this.keyboardType,
    this.labelText,
    this.obscureText,
    this.initialValue,
    this.hintText,
    this.onChanged,
    this.onSaved,
  });

  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? initialValue;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Campo vazio";
        }
        return null;
      },
      onChanged: onChanged,
      onSaved: onSaved,
      initialValue: initialValue,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
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