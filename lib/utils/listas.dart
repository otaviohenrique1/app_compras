List<String> listaValidadeMeses = ["Mes"] +
    List.generate(12, (index) {
      var numero = (index + 1);
      return (numero < 10) ? "0$numero" : numero.toString();
    });

List<String> listaValidadeAnos = ["Ano"] +
    List.generate(10, (index) {
      var data = (DateTime.now().year + index).toString();
      var resultado = data.substring(data.length - 2);
      return resultado;
    });

List<String> listaBandeirasCartaoCredito = [
  "Selecione",
  "Visa",
  "Mastercard",
  "Elo",
  "American Express",
  "Hipercard",
  "Diners Club",
  "Discover",
  "JCB",
  "Aura",
  "Cabal",
  "Sorocred",
  "Banescard",
  "Brasilcard",
  "Cooper Card",
  "Good Card",
  "Green Card",
  "Mais!",
  "Sodexo",
  "Ticket",
  "VR Benefícios"
];
