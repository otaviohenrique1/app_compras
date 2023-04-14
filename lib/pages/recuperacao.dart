import 'package:app_compras/pages/codigo_recuperacao.dart';
import 'package:app_compras/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:app_compras/components/botao.dart';
import 'package:app_compras/components/campo_texto.dart';
import 'package:app_compras/components/header.dart';
import 'package:app_compras/components/label_campo.dart';

class Recuperacao extends StatefulWidget {
  const Recuperacao({super.key});

  @override
  State<Recuperacao> createState() => _RecuperacaoState();
}

class _RecuperacaoState extends State<Recuperacao> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(titulo: "Recuperação da senha"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Center(
                child: Text("Esqueci a senha", style: TextStyle(fontSize: 32)),
              ),
              const Center(
                child: Text(
                  "Enviaremos um código por email para a recuperação da senha.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              LabelCampo(
                titulo: "E-mail",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _emailController,
                  hintText: "Digite o seu e-mail",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    } else if (!RegExp(r'@').hasMatch(value)) {
                      return "Email invalido";
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CodigoRecuperacao()));
                  }
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
