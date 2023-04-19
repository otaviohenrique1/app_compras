import 'package:flutter/material.dart';

class DetalhesProduto extends StatefulWidget {
  const DetalhesProduto({super.key});

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    String imagem =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg";
    String nome = harburguerClassico["nome"];
    List<Map<String, dynamic>> itens = harburguerClassico["itens"];
    String categoria = harburguerClassico["categoria"];
    num preco = harburguerClassico["preco"];
    List<String> galeria = harburguerClassico["galeria"];

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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
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
            //     child: const Icon(
            //       Icons.image,
            //       size: 96,
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      imagem,
                      height: 96,
                      width: 96,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            ItemDetalhes(
              titulo: "Nome:",
              descricao: nome,
            ),
            ItemDetalhes(
              titulo: "Categoria:",
              descricao: categoria,
            ),
            ItemDetalhes(
              titulo: "Preço:",
              descricao: formataValorMonetario(preco),
            ),
          ],
        ),
      ),
    );
  }
}

String formataValorMonetario(num valor) {
  return "R\$ ${valor.toStringAsFixed(2).replaceAll(".", ",")}";
}

class ItemDetalhes extends StatelessWidget {
  const ItemDetalhes({
    super.key,
    required this.titulo,
    required this.descricao,
  });

  final String titulo;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            descricao,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

Map<String, dynamic> harburguerClassico = {
  "nome": "Hambúrguer Clássico",
  "itens": [
    {
      "nome": "pão",
      "opcional": false,
    },
    {
      "nome": "carne",
      "opcional": true,
    },
    {
      "nome": "queijo",
      "opcional": true,
    },
    {
      "nome": "alface",
      "opcional": true,
    },
    {
      "nome": "tomate",
      "opcional": true,
    },
    {
      "nome": "cebola",
      "opcional": true,
    },
    {
      "nome": "ketchup",
      "opcional": true,
    },
    {
      "nome": "mostarda",
      "opcional": true,
    },
  ],
  "categoria": "Tradicional",
  "preco": 20.00,
  "galeria": [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
  ],
};
