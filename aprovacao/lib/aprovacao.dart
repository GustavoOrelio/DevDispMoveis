import 'dart:io';

void aprovacao() {
  String? cargaHoraria;
  String? horasParticipacao;
  String? notaFinal;
  int frequencia = 75;
  double porcentagem = frequencia / 100;

  print("Informe a nota final do aluno: ");
  notaFinal = stdin.readLineSync();
  double nf = double.parse(notaFinal!);

  print("Informe a carga horaria da disciplina em horas: ");
  cargaHoraria = stdin.readLineSync();
  double ch = double.parse(cargaHoraria!);

  print("Informe quantas horas o aluno participou: ");
  horasParticipacao = stdin.readLineSync();
  double horasParticipadas = double.parse(horasParticipacao!);

  double presenca = porcentagem * ch;

  print("\nA nota final do aluno é: $nf");
  print("\nA carga horaria da disciplina é: $ch horas");
  print("\nA frequencia minima da disciplina é: $presenca horas");
  print("\nO aluno participou de: $horasParticipadas horas");

  if (horasParticipadas <= presenca && nf <= 6) {
    print("\nAluno reprovado por conceito e por falta");
  } else if(horasParticipadas < presenca && nf >= 6){
    print("\nAluno reprovado por falta");
  }else if (horasParticipadas >= presenca && nf < 6) {
    print("\nAluno reprovado por conceito");
  }else{
    print("\nAluno aprovado");
  }

}
