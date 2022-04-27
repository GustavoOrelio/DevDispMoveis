void main() {}

bool vendaProduto({required double valor, required int quantidade}) {
  var valorVenda = valor * quantidade;
  if (valorVenda >= 120.00) {
    return true;
  } else {
    return false;
  }
}

bool vendaProdutoParamOpcional(
    {required double valor, required int quantidade, double valorTotal = 120}) {
  var valorVenda = valor * quantidade;
  if (valorVenda >= valorTotal) {
    return true;
  } else {
    return false;
  }
}

bool vendaProdutoParamOpcionalObg(double valor,
    {required int quantidade, double valorTotal = 120}) {
  var valorVenda = valor * quantidade;
  if (valorVenda >= valorTotal) {
    return true;
  } else {
    return false;
  }
}

bool vendaProdutoParamAnonimo(double valor, int quantidade, valorTotal) {
  var valorVenda = valor * quantidade;
  if (valorVenda >= valorTotal) {
    return true;
  } else {
    return false;
  }
}
