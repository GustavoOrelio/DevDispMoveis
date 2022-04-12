import 'dart:io';

void presenca() {
  String? cargaHoraria;
  String? horasParticipacao;
  int frequencia = 75;
  double porcentagem = frequencia / 100;

  print("Informe a carga horaria da disciplina em horas: ");
  cargaHoraria = stdin.readLineSync();
  double ch = double.parse(cargaHoraria!);

  print("Informe quantas horas o aluno participou: ");
  horasParticipacao = stdin.readLineSync();
  double horasParticipadas = double.parse(horasParticipacao!);

  double presenca = porcentagem * ch;

  print("\nA carga horaria da disciplina é: $ch horas");
  print("\nA frequencia minima da disciplina é: $presenca horas");
  print("\nO aluno participou de: $horasParticipadas horas");

  if (horasParticipadas >= presenca) {
    print("\nAluno Aprovado");
  } else {
    print("\nAluno reprovado");
  }
}
