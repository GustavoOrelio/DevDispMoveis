import 'dart:io';

void show() {
  var valorTotal = valorVenda();
  print("O valor total da venda é $valorTotal");
}

String valorVenda() {
  print("Informe a quantidade de itens comprado: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  print("Informe o valor unitario do item: ");
  double valor = double.parse(stdin.readLineSync()!);

  double valorTotal = quantidade * valor;

  return "$valorTotal";
}
