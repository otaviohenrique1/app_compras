import 'package:app_compras/components/botao.dart';
import 'package:flutter/material.dart';
import 'package:app_compras/components/campo_texto.dart';
import 'package:app_compras/components/header.dart';
import 'package:app_compras/components/label_campo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(titulo: "Login"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Center(
                child: Text("Login", style: TextStyle(fontSize: 32)),
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
                    }
                    return null;
                  },
                ),
              ),
              LabelCampo(
                titulo: "Senha",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _senhaController,
                  hintText: "Digite a sua senha",
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
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
                label: "Salvar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
              const SizedBox(height: 8),
              Botao(
                backgroundColor: Colors.redAccent,
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
