import 'package:app_compras/utils/formatadores.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:app_compras/components/botao.dart';
import 'package:app_compras/components/cartao_credito.dart';
import 'package:app_compras/components/label_campo.dart';
import 'package:app_compras/utils/listas.dart';
import 'package:app_compras/components/campo_texto.dart';
import 'package:app_compras/components/select.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

num valorTotalCompra = 900;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(
          children: [
            Icon(Icons.shopping_cart),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("Homepage"),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text(
            "Homepage",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}

List<String> divideValorTotalEmParcelas(
    num valorTotal, int quantidadeParcelas) {
  List<String> resultado = List.generate(quantidadeParcelas, (index) {
    var parcela = index + 1;
    var valor = (valorTotal / parcela).toStringAsFixed(2);
    return "$parcela x R\$ $valor (Sem juros)";
  });
  return ["Preço à vista"] + resultado;
}
