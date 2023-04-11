import 'package:flutter/material.dart';

class LabelCampo extends StatelessWidget {
  final Widget campo;
  final bool? exibeTitulo;
  final String? titulo;

  const LabelCampo({
    super.key,
    required this.campo,
    this.exibeTitulo,
    this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: (exibeTitulo == null || exibeTitulo == false) ? false : true,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text((titulo == null) ? "" : titulo!),
          ),
        ),
        campo
      ],
    );
  }
}
