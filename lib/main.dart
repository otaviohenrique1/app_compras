import 'package:flutter/material.dart';
// import 'package:app_compras/pages/login.dart';
import 'package:app_compras/pages/novo_usuario.dart';
// import 'package:app_compras/pages/pagamento.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const NovoUsuario(),
    );
  }
}
