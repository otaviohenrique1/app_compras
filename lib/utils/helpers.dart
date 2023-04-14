import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

String formatadorMonetario(num valor) {
  return valor.toStringAsFixed(2).replaceAll(".", ",");
}

List<String> divideValorTotalEmParcelas(
    num valorTotal, int quantidadeParcelas) {
  List<String> resultado = List.generate(quantidadeParcelas, (index) {
    var parcela = index + 1;
    var valor = (valorTotal / parcela).toStringAsFixed(2);
    return "$parcela x R\$ $valor (Sem juros)";
  });
  return ["Preço à vista"] + resultado;
}

MaskTextInputFormatter mascaraNumerica(String mascara) {
  final resultadoMascaraNumero = MaskTextInputFormatter(
    mask: mascara,
    filter: {"#": RegExp(r'[0-9]')},
  );
  return resultadoMascaraNumero;
}
