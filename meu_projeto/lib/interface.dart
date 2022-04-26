import 'dart:io';

void show() {
  print('''
    Escolha uma opção:
      01 - Venda de produto;
      02 - Compra de produto;
''');
  int opcao = int.parse(stdin.readLineSync()!);
  print('Digite a quantidade de produto: ');
  int quantidade = int.parse(stdin.readLineSync()!);
  print('Digite o valor do produto: ');
  double valor = double.parse(stdin.readLineSync()!);
  String resultado = "";
  if (opcao == 1) {
    resultado = interface(quantidade, valor, (int quantidade, double valor) {
      double valorTotal = quantidade * valor;
      return "\nO valor total da VENDA é $valorTotal";
    });
  } else if (opcao == 2) {
    resultado = interface(quantidade, valor, (int quantidade, double valor) {
      double valorTotal = quantidade * valor;
      return "\nO valor total da COMPRA é $valorTotal";
    });
  }
  print(resultado);
}

String interface(int quantidade, double valor, Function minhaFuncao) {
  return minhaFuncao(quantidade, valor);
}
