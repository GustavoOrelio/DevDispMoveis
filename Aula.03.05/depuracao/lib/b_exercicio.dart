import 'package:c_depuracao/ver_aprovacao/verificar_aprovacao.dart'
    as aprovacao;

String show() {
  var nota1 = 7.0;
  var nota2 = 8.0;
  var media = 7.0;
  var quantidadePresenca = 70;
  var cargaHorariaDisciplina = 80;
  var percentualMinimoPresenca = 75.0;
  return aprovacao.verificarAprovacao(nota1, nota2, media, quantidadePresenca,
      cargaHorariaDisciplina, percentualMinimoPresenca);
}

/*
Esta função tem o objetivo de verificar a aprovação pela nota e presença 
Considerando este cenário, quais são os possíveis contextos de teste? 
  Realizar depuração do codigo

Para cada cenário, os resultados gerados estão coerentes? 
  Não estaão coerentes

Faça a depuração e indique até onde a nota está correta.
  A nota esta correta até o momento de entrar na função calcularNota

Faça a depuração e indique até onde a presença está correta.
  A presença esta correta até o momento que entra na função verificarAprovacaoPresenca

Faça as alterações necessárias.
*/

