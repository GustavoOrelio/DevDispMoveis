import 'dart:io';

void solicitarNotas() {
  String? nota1;
  String? nota2;
  String? nota3;


  double menor;
  double maior;

  print("Informe a primeira nota do aluno: ");
  nota1 = stdin.readLineSync();
  double notaA = double.parse(nota1!);

  print("Informe a segunda nota do aluno: ");
  nota2 = stdin.readLineSync();
  double notaB = double.parse(nota2!);

  print("Informe a terceira nota do aluno: ");
  nota3 = stdin.readLineSync();
  double notaC = double.parse(nota3!);

  double media = notaA + notaB + notaC;
  double calcMedia = media / 3;

  if (notaA < notaB) {
    if (notaB < notaC) {
      menor = notaA;
    } else {
      menor = notaC;
    }
  } else {
    if (notaB < notaC) {
      menor = notaB;
    } else {
      menor = notaC;
    }
  }

  if (notaA > notaB) {
    if (notaB > notaC) {
      maior = notaA;
    } else {
      maior = notaC;
    }
  } else {
    if (notaB > notaC) {
      maior = notaB;
    } else {
      maior = notaC;
    }
  }
  /*  print("\nA primeira nota do aluno é: $notaA");
  print("\nA segunda nota do aluno é: $notaB");
  print("\nA terceira nota do aluno é: $notaC"); */
  print("\nA menor nota é: $menor");
  print("\nA media das notas do aluno é: $calcMedia");
  print("\nA maior nota é: $maior");
}
