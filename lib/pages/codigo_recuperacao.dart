import 'package:app_compras/pages/editar_senha.dart';
import 'package:app_compras/pages/login.dart';
import 'package:app_compras/pages/recuperacao.dart';
import 'package:flutter/material.dart';
import 'package:app_compras/components/botao.dart';
import 'package:app_compras/utils/helpers.dart';
import 'package:app_compras/components/campo_texto.dart';
import 'package:app_compras/components/header.dart';
import 'package:app_compras/components/label_campo.dart';

class CodigoRecuperacao extends StatefulWidget {
  const CodigoRecuperacao({super.key});

  @override
  State<CodigoRecuperacao> createState() => _CodigoRecuperacaoState();
}

class _CodigoRecuperacaoState extends State<CodigoRecuperacao> {
  final formKey = GlobalKey<FormState>();
  final _codigoController = TextEditingController();

  @override
  void dispose() {
    _codigoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(titulo: "Código recuperação"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Center(
                child: Text(
                  "Digite o código enviado pelo email.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              LabelCampo(
                titulo: "Código",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _codigoController,
                  hintText: "Digite o código",
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
                ),
              ),
              Botao(
                backgroundColor: Colors.blueAccent,
                label: "Proximo",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditarSenha()));
                  }
                },
              ),
              Botao(
                backgroundColor: Colors.green,
                label: "Reenviar código",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Recuperacao()));
                },
              ),
              Botao(
                backgroundColor: Colors.redAccent,
                label: "Cancelar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
