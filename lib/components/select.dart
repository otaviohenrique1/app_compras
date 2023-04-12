import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({
    super.key,
    required this.lista,
    this.validator,
    this.outroItem,
    this.onSaved,
  });

  final List<String> lista;
  final String? outroItem;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue =
        (widget.outroItem == null) ? widget.lista.first : widget.outroItem!;

    return DropdownButtonFormField(
      value: dropdownValue,
      items: widget.lista.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        );
      }).toList(),
      onChanged: (value) async {
        setState(() {
          dropdownValue = value!;
        });
      },
      onSaved: widget.onSaved,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
      validator: widget.validator,
    );
  }
}
