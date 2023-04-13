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
  final formKey = GlobalKey<FormState>();
  final bandeiraCartaoCreditoController = TextEditingController();
  final nomeBancoController = TextEditingController();
  final nomeTitularController = TextEditingController();
  final numeroCartaoController = TextEditingController();
  final numeroCartaoCVVController = TextEditingController();

  String _nomeBanco = "";
  String _nomeTitular = "";
  String _numeroCartao = "";
  String _numeroCartaoCVV = "";
  String _bandeiraCartaoCredito = "";
  String _validadeMes = "";
  String _validadeAno = "";

  String dropdownValueListaBandeiras = listaBandeirasCartaoCredito.first;
  String dropdownValueValidadeMeses = listaValidadeMeses.first;
  String dropdownValueValidadeAnos = listaValidadeAnos.first;

  final _numeroCartaoFormatter = MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final _numeroCVVFormatter = MaskTextInputFormatter(
    mask: '###',
    filter: {"#": RegExp(r'[0-9]')},
  );

  List<String> listaParcelas =
      ["Selecione"] + divideValorTotalEmParcelas(valorTotalCompra, 12);

  @override
  void dispose() {
    nomeBancoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String dropdownValueListaParcelas = listaParcelas.first;

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
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "R\$ ${formatadorMonetario(valorTotalCompra)}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, top: 20),
                child: CartaoCredito(
                  bandeiraCartaoCredito: _bandeiraCartaoCredito,
                  nomeBanco: _nomeBanco,
                  nomeTitular: _nomeTitular,
                  numeroCartao: _numeroCartao,
                  numeroCartaoCVV: _numeroCartaoCVV,
                  validadeMes: _validadeMes,
                  validadeAno: _validadeAno,
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Bandeira do cartão",
                campo: Select(
                  lista: listaBandeirasCartaoCredito,
                  dropdownValue: dropdownValueListaBandeiras,
                  onChanged: (value) async {
                    setState(() {
                      dropdownValueListaBandeiras = value!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value == "Selecione") {
                      return "Valor inválido";
                    }
                    return null;
                  },
                  // onSaved: (value) {_bandeiraCartaoCredito = value!;},
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Nome do banco",
                campo: CampoTexto(
                  keyboardType: TextInputType.text,
                  hintText: "Digite o nome do banco",
                  // onSaved: (value) {_nomeBanco = value!;},
                  // onChanged: (value) {setState(() {_nomeBanco = value;});},
                  controller: nomeBancoController,
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
                  controller: nomeTitularController,
                  keyboardType: TextInputType.text,
                  hintText: "Digite o nome do titular",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
                  // onSaved: (value) {_nomeTitular = value!;},
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Numero no cartão",
                campo: CampoTexto(
                  controller: numeroCartaoController,
                  keyboardType: TextInputType.number,
                  hintText: "#### #### #### ####",
                  // hintText: "Digite o numero no cartão",
                  inputFormatters: [_numeroCartaoFormatter],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
                  // onSaved: (value) {_numeroCartao = value!;},
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Numero do CVV",
                campo: CampoTexto(
                  controller: numeroCartaoCVVController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    _numeroCVVFormatter
                    // LengthLimitingTextInputFormatter(3),
                  ],
                  hintText: "###",
                  // hintText: "Digite o numero do CVV",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
                  // onSaved: (value) {_numeroCartaoCVV = value!;},
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
                        dropdownValue: dropdownValueValidadeMeses,
                        onChanged: (value) async {
                          setState(() {
                            dropdownValueValidadeMeses = value!;
                          });
                        },
                        validator: (value) {
                          if (value == null || value == "Mes") {
                            return "Valor inválido";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Select(
                        lista: listaValidadeAnos,
                        dropdownValue: dropdownValueValidadeAnos,
                        onChanged: (value) async {
                          setState(() {
                            dropdownValueValidadeAnos = value!;
                          });
                        },
                        validator: (value) {
                          if (value == null || value == "Ano") {
                            return "Valor inválido";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              LabelCampo(
                padding: const EdgeInsets.only(bottom: 16),
                exibeTitulo: true,
                titulo: "Parcelas",
                campo: Select(
                  lista: listaParcelas,
                  dropdownValue: dropdownValueListaParcelas,
                  onChanged: (value) async {
                    setState(() {
                      dropdownValueListaParcelas = value!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value == "Selecione") {
                      return "Valor inválido";
                    }
                    return null;
                  },
                  // onSaved: (value) {_bandeiraCartaoCredito = value!;},
                ),
              ),
              Botao(
                backgroundColor: Colors.blue,
                label: "Salvar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      _nomeBanco = nomeBancoController.text;
                      _nomeTitular = nomeTitularController.text;
                      _numeroCartao = numeroCartaoController.text;
                      _numeroCartaoCVV = numeroCartaoCVVController.text;
                      _bandeiraCartaoCredito = dropdownValueListaBandeiras;
                      _validadeMes = dropdownValueValidadeMeses;
                      _validadeAno = dropdownValueValidadeAnos;
                    });
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

List<String> divideValorTotalEmParcelas(
    num valorTotal, int quantidadeParcelas) {
  List<String> resultado = List.generate(quantidadeParcelas, (index) {
    var parcela = index + 1;
    var valor = (valorTotal / parcela).toStringAsFixed(2);
    return "$parcela x R\$ $valor (Sem juros)";
  });
  return ["Preço à vista"] + resultado;
}
