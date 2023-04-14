import 'package:app_compras/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:app_compras/components/botao.dart';
import 'package:app_compras/utils/helpers.dart';
import 'package:app_compras/components/campo_texto.dart';
import 'package:app_compras/components/header.dart';
import 'package:app_compras/components/label_campo.dart';

class NovoUsuario extends StatefulWidget {
  const NovoUsuario({super.key});

  @override
  State<NovoUsuario> createState() => _NovoUsuarioState();
}

class _NovoUsuarioState extends State<NovoUsuario> {
  final formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _repitaSenhaController = TextEditingController();
  final _celularController = TextEditingController();
  final _cpfController = TextEditingController();

  final _numeroCelularFormatter = mascaraNumerica('(##)#####-####');
  final _numeroCPFFormatter = mascaraNumerica('###.###.###-##');

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _repitaSenhaController.dispose();
    _celularController.dispose();
    _cpfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(titulo: "Novo usuario"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              LabelCampo(
                titulo: "Nome",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _nomeController,
                  hintText: "Digite o seu nome",
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
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
              LabelCampo(
                titulo: "Senha",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _senhaController,
                  hintText: "Digite a sua senha",
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    } else if (value.length <= 8) {
                      return "Senha tem que ter 8 ou mais caracteres";
                    }
                    return null;
                  },
                ),
              ),
              LabelCampo(
                titulo: "Repita a senha",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _repitaSenhaController,
                  hintText: "Digite a sua senha",
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    } else if (value.length < 8) {
                      return "Senha tem que ter 8 ou mais caracteres";
                    } else if (value != _senhaController.text) {
                      return "As senhas digitadas não coincidem";
                    }
                    return null;
                  },
                ),
              ),
              LabelCampo(
                titulo: "Celular",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 16),
                campo: CampoTexto(
                  controller: _celularController,
                  inputFormatters: [_numeroCPFFormatter],
                  hintText: "(##)#####-####",
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo vazio";
                    }
                    return null;
                  },
                ),
              ),
              LabelCampo(
                titulo: "CPF",
                exibeTitulo: true,
                padding: const EdgeInsets.only(bottom: 32),
                campo: CampoTexto(
                  controller: _cpfController,
                  inputFormatters: [_numeroCelularFormatter],
                  hintText: "###.###.###-##",
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
                label: "Entrar",
                fontColor: Colors.white,
                fontSize: 20,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
