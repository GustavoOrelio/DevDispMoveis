import 'dart:io';

void show() {
  valorVenda();
}

void valorVenda() {
  print("\nInforme a quantidade de itens comprado: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  print("\nInforme o valor unitario do item: ");
  double valor = double.parse(stdin.readLineSync()!);

  double valorTotal = quantidade * valor;

  print("\nO valor total da venda é $valorTotal");
}
