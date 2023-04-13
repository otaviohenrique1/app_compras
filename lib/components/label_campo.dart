import 'package:flutter/material.dart';

class LabelCampo extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Widget campo;
  final bool? exibeTitulo;
  final String? titulo;

  const LabelCampo({
    super.key,
    required this.padding,
    required this.campo,
    this.exibeTitulo,
    this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Visibility(
            visible:
                (exibeTitulo == null || exibeTitulo == false) ? false : true,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  (titulo == null) ? "" : titulo!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          campo
        ],
      ),
    );
  }
}
