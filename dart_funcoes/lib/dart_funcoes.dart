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
  String resultado = "";
  if (opcao == 1) {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      double media = (nota1 + nota2) / 2;
      if (media >= 6) {
        return 'Aprovado';
      } else {
        return 'Reprovado';
      }
    });
  } else if (opcao == 2) {
    resultado = interface(
        nota1, nota2, (double nota1, double nota2) => (nota1 + nota2) / 2);
  } else if (opcao == 3) {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      if (nota1 > nota2) {
        return nota1;
      } else {
        return nota2;
      }
    });
  }
  print(resultado);
}

String interface(double nota1, nota2, Function minhaFuncao) {
  return minhaFuncao(nota1, nota2);
}

/* String verificarAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  if (media >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
} */

/* double calcularMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return media;
} */

/* double maiorNota(double nota1, double nota2) {
  if (nota1 > nota2) {
    return nota1;
  } else {
    return nota2;
  }
} */
