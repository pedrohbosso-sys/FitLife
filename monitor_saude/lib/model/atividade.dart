
// Modelo de atividade, representando uma tarefa ou meta do usuário, com nome e status de conclusão
class Atividade {
  final String nome;
  bool concluida;

  Atividade({
    required this.nome,
    this.concluida = false,
  });
}