import 'package:flutter/material.dart';

class DetalhesProduto extends StatefulWidget {
  const DetalhesProduto({super.key});

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(
          children: [
            Icon(Icons.shopping_cart),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("Detalhes"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.image,
                  size: 96,
                ),
              ),
            ),
            // const SizedBox(height: 16),
            // Center(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         width: 1,
            //         color: Colors.black,
            //         style: BorderStyle.solid,
            //       ),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Image.network(
            //       "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
            //       height: 96,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
