/* 
- Verificar aprovação - 2 notas
- Média - 2 notas
- Maior nota - 2 notas
criar uma interface
 */

import 'dart:io';

void show() {
  print('''
    Escolha uma opção:
      01 - Verificar a aprovação;
      02 - Calcular a média;
      03 - Verificar a maior nota;
''');
  int opcao = int.parse(stdin.readLineSync()!);
  print('Nota 1: ');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Nota 2: ');
  double nota2 = double.parse(stdin.readLineSync()!);
  String resultado = interface(opcao, nota1, nota2);
  print(resultado);
}

String interface(int opcao, double nota1, nota2) {
  if (opcao == 1) {
    return verificarAprovacao(nota1, nota2);
  } else if (opcao == 2) {
    return 'A média é ${calcularMedia(nota1, nota2)}';
  } else if (opcao == 3) {
    return 'A maior nota é ${maiorNota(nota1, nota2)}';
  } else {
    return 'Opção invalida';
  }
}

String verificarAprovacao(double nota1, double notas2) {
  double media = (nota1 + notas2) / 2;
  if (media >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

double calcularMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return media;
}

double maiorNota(double nota1, double nota2) {
  if (nota1 > nota2) {
    return nota1;
  } else {
    return nota2;
  }
}
