void main() {
// Atividade II → Realize as atividades abaixo

//Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
  var salario = 1500.00;
  var bonus = 150.00;
  adicionarSalario(salario, bonus, ePositivo(bonus));
//Exercício 2 - refaça o exe anterior, convertendo a named function em anonymous function.
  adicionarSalario(salario, bonus, (bonus) {
    if (bonus > 0) {
      return true;
    } else {
      return false;
    }
  });
//Exercício 3  - refaça o exe anterior, utilizando a arrow function.
  adicionarSalario(salario, bonus, (bonus) => (bonus > 0));
//Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.
  adicionarSalario(salario, bonus, (bonus) => (bonus < salario));
//Exercício 5  - refaça o exe c porém fazendo uma validação sua.
  adicionarSalario(salario, bonus, (bonus) => (bonus >= salario));
//Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.
  var nota1 = 1500.00;
  var nota2 = 150.00;
  mediaNotas(nota1, nota2, (media) => (nota1 + nota2) / 2);
/*
  Exercício 6 - Conseguiu entender:
    - O contexto em que é útil utilizar funções anônimas?
    - Os requisitos necessários para usar funções anônimas? 
    - diferença entre função nomeada e anônimas?
    - diferença entre anonymous function e arrow function?
    Em que caso devemos utilizar Arrow Function? O que devemos considerar?
  */
}

void mediaNotas(double nota1, double nota2, Function(double media)) {}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

ePositivo(double numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}
