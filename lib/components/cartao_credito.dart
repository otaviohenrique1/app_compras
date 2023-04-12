import 'package:flutter/material.dart';

class CartaoCredito extends StatefulWidget {
  const CartaoCredito({
    super.key,
    this.bandeiraCartaoCredito,
    this.nomeBanco,
    this.nomeTitular,
    this.numeroCartao,
    this.numeroCartaoCVV,
    this.validadeMes,
    this.validadeAno,
  });

  final String? bandeiraCartaoCredito;
  final String? nomeBanco;
  final String? nomeTitular;
  final String? numeroCartao;
  final String? numeroCartaoCVV;
  final String? validadeMes;
  final String? validadeAno;

  @override
  State<CartaoCredito> createState() => _CartaoCreditoState();
}

class _CartaoCreditoState extends State<CartaoCredito> {
  bool virarCartao = true;

  String validaValor(String? valor, String label) {
    if (valor == null || valor == "") {
      return label;
    }
    return valor;
  }

  @override
  Widget build(BuildContext context) {
    var validaNomeBanco = validaValor(widget.nomeBanco, "-----");
    var validaNomeTitular =
        (widget.nomeTitular == null || widget.nomeTitular == "")
            ? "-----"
            : widget.nomeTitular!;

    var validaBandeiraCartaoCredito =
        validaValor(widget.bandeiraCartaoCredito, "-----");

    var validaNumeroCartao =
        validaValor(widget.numeroCartao, "#### #### #### ####");

    var validaNumeroCartaoCVV = validaValor(widget.numeroCartaoCVV, "###");

    var validaValidadeMes = validaValor(widget.validadeMes, "##");

    var validaValidadeAno = validaValor(widget.validadeAno, "##");

    return Stack(
      children: [
        Center(
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
            child: Column(
              children: [
                Visibility(
                  visible: (virarCartao == true) ? true : false,
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
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
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
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                validaNomeTitular,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: (virarCartao == false) ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.black,
                          width: 320,
                          height: 30,
                        ),
                        const SizedBox(height: 38),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  validaNumeroCartao,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  width: 230,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Código de Segurança:",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        validaNumeroCartaoCVV,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 230,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Validado até:",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        "$validaValidadeMes/$validaValidadeAno",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 38,
          child: SizedBox(
            width: 40,
            height: 40,
            child: FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: () {
                setState(() {
                  virarCartao = !virarCartao;
                });
              },
              shape: const CircleBorder(),
              child: const Icon(
                Icons.autorenew_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
