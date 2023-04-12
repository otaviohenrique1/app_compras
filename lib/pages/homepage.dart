import 'package:app_compras/components/botao.dart';
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bandeiraCartaoCreditoController = TextEditingController();

    String bandeiraCartaoCredito = "";
    String _nomeBanco = "";
    String _nomeTitular = "";
    String _numeroCartao = "";
    String _numeroCartaoCVV = "";

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
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Cartao(
                  bandeiraCartaoCredito: bandeiraCartaoCredito,
                  nomeBanco: _nomeBanco,
                  nomeTitular: _nomeTitular,
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Bandeira do cartão",
                campo: Select(
                  lista: listaBandeirasCartaoCredito,
                  onSaved: (value) {
                    bandeiraCartaoCredito = value!;
                  },
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Nome do banco",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                  hintText: "Digite o nome do banco",
                  onSaved: (value) {
                    _nomeBanco = value!;
                  },
                  controller: bandeiraCartaoCreditoController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Nome do titular",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                  hintText: "Digite o nome do titular",
                  onSaved: (value) {
                    _nomeTitular = value!;
                  },
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Numero no cartão",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                  hintText: "Digite o numero no cartão",
                  onSaved: (value) {
                    _numeroCartao = value!;
                  },
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Numero do CVV",
                campo: CampoTexto(
                  keyboardType: TextInputType.number,
                  hintText: "Digite o numero do CVV",
                  onSaved: (value) {
                    _numeroCartaoCVV = value!;
                  },
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Validade",
                campo: Row(
                  children: [
                    Expanded(
                      child: Select(
                        lista: listaValidadeMeses,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Select(
                        lista: listaValidadeAnos,
                      ),
                    ),
                  ],
                ),
              ),
              Botao(
                backgroundColor: Colors.blue,
                label: "Salvar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text(
                    //       "Produto editado com sucesso!",
                    //       style: TextStyle(fontSize: 16),
                    //     ),
                    //     showCloseIcon: true,
                    //   ),
                    // );
                    print("_nomeBanco => $_nomeBanco");
                    print(_nomeTitular);
                    print(bandeiraCartaoCredito);
                    print(_numeroCartao);
                    print(_numeroCartaoCVV);
                  }
                },
              ),
              const SizedBox(height: 8),
              Botao(
                backgroundColor: Colors.red,
                label: "Cancelar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cartao extends StatelessWidget {
  const Cartao({
    super.key,
    this.bandeiraCartaoCredito,
    this.nomeBanco,
    this.nomeTitular,
  });

  final String? bandeiraCartaoCredito;
  final String? nomeBanco;
  final String? nomeTitular;

  @override
  Widget build(BuildContext context) {
    var validaNomeBanco =
        (nomeBanco == null || nomeBanco == "") ? "-----" : nomeBanco!;
    var validaNomeTitular =
        (nomeTitular == null || nomeTitular == "") ? "-----" : nomeTitular!;
    var validaBandeiraCartaoCredito =
        (bandeiraCartaoCredito == null || bandeiraCartaoCredito == "")
            ? "-----"
            : bandeiraCartaoCredito!;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.amberAccent,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        width: 320,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    const Icon(Icons.credit_card),
                    Text(
                      validaBandeiraCartaoCredito,
                      style: const TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.deepOrange,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      width: 60,
                      height: 30,
                    ),
                    Text(
                      validaNomeBanco,
                      style: const TextStyle(fontSize: 22),
                    ),
                    Text(
                      validaNomeTitular,
                      style: const TextStyle(fontSize: 22),
                    ),
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
