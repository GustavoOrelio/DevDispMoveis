void main() {
  verificarAprovacao(5, 7, 7);
  verificarAprovacao(6, 8);

  verificarAprovacaoComParamNomeado(nota1: 8, nota2: 9, mediaAprovacao: 7);
  verificarAprovacaoComParamNomeado(nota2: 4, mediaAprovacao: 5, nota1: 7);
}

String verificarAprovacao(double nota1, double nota2,
    [double mediaAprovacao = 6]) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarAprovacaoComParamNomeado(
    {required double nota1, required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarAprovacaoComParamMisturado(double nota1,
    {required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
