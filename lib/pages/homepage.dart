import 'package:app_compras/components/label_campo.dart';
import 'package:flutter/material.dart';
import 'package:app_compras/components/campo_texto.dart';
import 'package:app_compras/components/select.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(
          children: [
            Icon(Icons.shopping_cart),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("Pagamento"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              LabelCampo(
                exibeTitulo: true,
                titulo: "Bandeira do cartão",
                campo: Select(lista: listaValidadeMeses),
              ),
              const LabelCampo(
                exibeTitulo: true,
                titulo: "Nome do banco",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                ),
              ),
              const LabelCampo(
                exibeTitulo: true,
                titulo: "Nome do titular",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                ),
              ),
              const LabelCampo(
                exibeTitulo: true,
                titulo: "Numero do cartão",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                ),
              ),
              const LabelCampo(
                exibeTitulo: true,
                titulo: "Numero do CVV",
                campo: CampoTexto(
                  keyboardType: TextInputType.number,
                ),
              ),
              LabelCampo(
                exibeTitulo: true,
                titulo: "Bandeira do cartão",
                campo: Row(
                  children: [
                    Expanded(child: Select(lista: listaValidadeMeses)),
                    const SizedBox(width: 4),
                    Expanded(child: Select(lista: listaValidadeMeses)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var a = DateTime.now().year;

List<String> listaValidadeMeses =
    ["Mes"] + List.generate(12, (index) => (index + 1).toString());

List<String> listaValidadeAnos = ["Ano"] +
    List.generate(10, (index) {
      var data = (DateTime.now().year + index).toString();
      var resultado = data.substring(data.length - 2);
      return resultado;
    });

List<String> listaBandeirasCartaoCredito = [
  "Selecione",
  "Visa",
  "Mastercard",
  "Elo",
  "American Express",
  "Hipercard",
  "Diners Club",
  "Discover",
  "JCB",
  "Aura",
  "Cabal",
  "Sorocred",
  "Banescard",
  "Brasilcard",
  "Cooper Card",
  "Good Card",
  "Green Card",
  "Mais!",
  "Sodexo",
  "Ticket",
  "VR Benefícios"
];
