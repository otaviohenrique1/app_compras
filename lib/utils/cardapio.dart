class HarburgueriaCardapioItem {
  final String nome;
  final bool opcional;

  HarburgueriaCardapioItem({
    required this.nome,
    required this.opcional,
  });
}

class HarburgueriaCardapio {
  final String nome;
  final List<HarburgueriaCardapioItem> itens;
  final String categoria;
  final double preco;
  final List<String> galeria;

  HarburgueriaCardapio({
    required this.nome,
    required this.itens,
    required this.categoria,
    required this.preco,
    required this.galeria,
  });
}

List<HarburgueriaCardapio> a = [
  HarburgueriaCardapio(
    nome: "Hambúrguer Clássico",
    itens: [
      HarburgueriaCardapioItem(nome: "pão", opcional: false),
      HarburgueriaCardapioItem(nome: "carne", opcional: true),
      HarburgueriaCardapioItem(nome: "queijo", opcional: true),
      HarburgueriaCardapioItem(nome: "alface", opcional: true),
      HarburgueriaCardapioItem(nome: "tomate", opcional: true),
      HarburgueriaCardapioItem(nome: "cebola", opcional: true),
      HarburgueriaCardapioItem(nome: "ketchup", opcional: true),
      HarburgueriaCardapioItem(nome: "mostarda", opcional: true),
    ],
    categoria: "Tradicional",
    preco: 20.00,
    galeria: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    ],
  ),
];

List<Map<String, dynamic>> harburgueriaCardapio = [
  {
    "nome": "Cheeseburger",
    "itens": [
      {"nome": "pão", "opcional": false},
      {"nome": "carne", "opcional": true},
      {"nome": "queijo", "opcional": true},
      {"nome": "alface", "opcional": true},
      {"nome": "tomate", "opcional": true},
      {"nome": "cebola", "opcional": true},
      {"nome": "molho especial da casa", "opcional": true},
    ],
    "categoria": "Tradicional",
    "preco": 18.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    ],
  },
  {
    "nome": "Hambúrguer com Bacon",
    "itens": [
      {"nome": "pão", "opcional": false},
      {"nome": "carne", "opcional": true},
      {"nome": "queijo", "opcional": true},
      {"nome": "bacon crocante", "opcional": true},
      {"nome": "alface", "opcional": true},
      {"nome": "tomate", "opcional": true},
      {"nome": "cebola", "opcional": true},
      {"nome": "molho barbecue", "opcional": true},
    ],
    "categoria": "Tradicional",
    "preco": 23.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    ],
  },
  {
    "nome": "Hambúrguer de Picanha",
    "itens": [
      {"nome": "pão", "opcional": false},
      {"nome": "carne de picanha", "opcional": true},
      {"nome": "queijo", "opcional": true},
      {"nome": "alface", "opcional": true},
      {"nome": "tomate", "opcional": true},
      {"nome": "cebola caramelizada", "opcional": true},
      {"nome": "molho especial da casa", "opcional": true},
    ],
    "categoria": "Especial",
    "preco": 25.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    ],
  },
  {
    "nome": "Hambúrguer Vegetariano",
    "itens": [
      {"nome": "pão", "opcional": false},
      {"nome": "hambúrguer de soja", "opcional": true},
      {"nome": "queijo", "opcional": true},
      {"nome": "alface", "opcional": true},
      {"nome": "tomate", "opcional": true},
      {"nome": "cebola", "opcional": true},
      {"nome": "maionese vegana", "opcional": true},
    ],
    "categoria": "Especial",
    "preco": 28.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    ],
  },
  {
    "nome": "Hambúrguer de Frango",
    "itens": [
      {"nome": "pão", "opcional": false},
      {"nome": "filé de frango empanado", "opcional": true},
      {"nome": "queijo", "opcional": true},
      {"nome": "alface", "opcional": true},
      {"nome": "tomate", "opcional": true},
      {"nome": "cebola", "opcional": true},
      "maionese especial"
    ],
    "categoria": "Especial",
    "preco": 29.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/640px-NCI_Visuals_Food_Hamburger.jpg",
    ],
  },
  {
    "nome": "Batata Frita Crocante",
    "itens": ["batatas fritas"],
    "categoria": "Acompanhamento",
    "preco": 10.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/8/83/French_Fries.JPG"
    ],
  },
  {
    "nome": "Onion Rings",
    "itens": ["anéis de cebola empanada"],
    "categoria": "Acompanhamento",
    "preco": 8.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/OnionRings.JPG/649px-OnionRings.JPG"
    ],
  },
  {
    "nome": "Batata Rústica",
    "itens": ["batatas rústicas assadas", "alecrim", "sal grosso"],
    "categoria": "Acompanhamento",
    "preco": 12.00,
    "galeria": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Roasted_Red_Potatoes_in_box_%2843234169345%29.jpg/640px-Roasted_Red_Potatoes_in_box_%2843234169345%29.jpg"
    ],
  },
];

/*
  HAMBÚRGUERES TRADICIONAIS:
    Hambúrguer Clássico: pão, carne, queijo, alface, tomate, cebola, ketchup e mostarda
    Cheeseburger: pão, carne, queijo, alface, tomate, cebola e molho especial da casa
    Hambúrguer com Bacon: pão, carne, queijo, bacon crocante, alface, tomate, cebola e molho barbecue

  HAMBÚRGUERES ESPECIAIS:
    Hambúrguer de Picanha: pão, carne de picanha, queijo, alface, tomate, cebola caramelizada e molho especial da casa
    Hambúrguer Vegetariano: pão, hambúrguer de soja, queijo, alface, tomate, cebola e maionese vegana
    Hambúrguer de Frango: pão, filé de frango empanado, queijo, alface, tomate, cebola e maionese especial

  ACOMPANHAMENTOS:
    Batata Frita Crocante: porção de batatas fritas crocantes e sequinhas
    Onion Rings: anéis de cebola empanados e crocantes
    Batata Rústica: porção de batatas rústicas assadas com alecrim e sal grosso

  BEBIDAS:
    Refrigerantes: diversas opções de refrigerantes em lata ou em copo
    Chás Gelados: sabores variados de chá gelado
    Cervejas: diversas opções de cervejas artesanais e tradicionais

  SOBREMESAS:
    Milkshake: opções de sabores variados de milkshake
    Brownie com Sorvete: brownie quente com bola de sorvete e calda de chocolate
    Cheesecake: fatia de cheesecake com calda de frutas vermelhas
*/

/*
List<Map<String, dynamic>> hamburgueriaCardapio = [
  {
    'nome': 'Hambúrguer Tradicional',
    'descricao': 'Pão com gergelim, hambúrguer de carne bovina, queijo cheddar, alface, tomate e molho especial',
    'preco': 20.00,
    'imagem': 'https://cdn.pixabay.com/photo/2021/07/18/10/29/hamburger-6472964_960_720.jpg',
  },
  {
    'nome': 'Hambúrguer Vegetariano',
    'descricao': 'Pão com gergelim, hambúrguer de cogumelos, queijo mussarela, alface, tomate e maionese',
    'preco': 18.00,
    'imagem': 'https://cdn.pixabay.com/photo/2016/06/07/16/51/vegetarian-1440384_960_720.jpg',
  },
  {
    'nome': 'Hambúrguer de Frango',
    'descricao': 'Pão com gergelim, hambúrguer de frango, queijo prato, alface, tomate e molho especial',
    'preco': 22.00,
    'imagem': 'https://cdn.pixabay.com/photo/2016/11/29/13/31/barbecue-1869800_960_720.jpg',
  },
  {
    'nome': 'Hambúrguer Duplo',
    'descricao': 'Dois hambúrgueres de carne bovina, queijo cheddar, alface, tomate e molho especial',
    'preco': 25.00,
    'imagem': 'https://cdn.pixabay.com/photo/2021/08/04/18/03/hamburger-6527209_960_720.jpg',
  },
];
*/
