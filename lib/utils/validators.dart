bool validaNull(String? value) {
  return value == null;
}

bool validaVazio(String value) {
  return value.isEmpty;
}

dynamic validatorCampoTexto(String value, String mensagem) {
  if (validaNull(value) || validaVazio(value)) {
    return mensagem;
  }
  return null;
}

dynamic validatorSelect(String value, String item, String mensagem) {
  if (validaNull(value) || value == item) {
    return mensagem;
  }
  return null;
}
