void show() {
  print("\nFunçoes com retorno e com parâmetros");
  var resultado = notas(8, 6);
  print("O aluno está $resultado");
}

//Com retorno e com parametro

String notas(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'Aprovado' : 'Reprovado';
}
