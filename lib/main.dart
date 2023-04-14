import 'package:flutter/material.dart';
import 'package:app_compras/pages/login.dart';

void main() {
  runApp(const AppCompras());
}

class AppCompras extends StatelessWidget {
  const AppCompras({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppCompras Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
