void show() {
  var valorTotal = valorVenda(4, 4.50);
  print("\nO valor total da venda é $valorTotal");
}

String valorVenda(int quantidade, double valor) {
  double valorTotal = quantidade * valor;

  return "$valorTotal";
}
