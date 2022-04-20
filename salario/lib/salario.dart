/* 
Atividade 1
→ interfaceSalario 
→ bonificar - receber salario e o valor do bônus. Realizar o cálculo e informar se o total é maior que o salário mínimo.
→ descontar - receber salario e o valor do desconto. Realizar o cálculo e informar se o total é positivo.
→ adicionar comissão - receber salario e o valor da comissão. Se a comissão for maior que o salário, adicionar somente a metade do valor da comissão. Retornar o valor
 */

import 'dart:io';

void show() {
  print('''
    Escolha uma opção:
      01 - Bonificação;
      02 - Descontar;
      03 - Comissão;
''');
  int opcao = int.parse(stdin.readLineSync()!);
  print('Salario: ');
  double salario = double.parse(stdin.readLineSync()!);
  print('Valor: ');
  double valor = double.parse(stdin.readLineSync()!);
  String resultado = "";
  if (opcao == 1) {
    resultado = interface(salario, valor, bonificar);
  } else if (opcao == 2) {
    resultado = interface(salario, valor, descontar);
  } else if (opcao == 3) {
    resultado = interface(salario, valor, comissaoSalario);
  }

  print(resultado);
}

String interface(double salario, double valor, Function minhaFuncao) {
  return minhaFuncao(salario, valor);
}

String bonificar(double salario, double bonus) {
  double salarioMinimo = 1212.00;
  double salarioTotal = salario + bonus;
  if (salarioTotal > salarioMinimo) {
    return 'Seu salario é maior do que o salario minimo';
  } else {
    return 'Seu salario é menor do que o salario minimo';
  }
}

String descontar(double salario, double desconto) {
  double salarioTotal = salario - desconto;
  if (salarioTotal >= 0) {
    return 'O total é positivo';
  } else {
    return 'O total é negativo';
  }
}

String comissaoSalario(double salario, double comissao) {
  if (comissao > salario) {
    double metade = comissao / 2;
    double total = salario + metade;
    return "$total";
  } else {
    double totalSalario = salario + comissao;
    return "$totalSalario";
  }
}
