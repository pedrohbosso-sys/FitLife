import 'package:flutter/material.dart';
import '../model/atividade.dart';

class AtividadesController with ChangeNotifier {
  List<Atividade> atividades = [
    Atividade(nome: "Caminhada"),
    Atividade(nome: "Corrida"),
    Atividade(nome: "Musculação"),
    Atividade(nome: "Muay Thai"),
    Atividade(nome: "Futebol"),
  ];

  int indiceAtual = 0;
  bool modoEscuro = false;

  // notificações
  bool notificacoesAtivas = false;

  // nome do usuário
  String nomeUsuario = "Usuário";

  List<Atividade> get pendentes =>
      atividades.where((a) => !a.concluida).toList();

  List<Atividade> get concluidas =>
      atividades.where((a) => a.concluida).toList();

  void alternarStatus(Atividade atividade) {
    atividade.concluida = !atividade.concluida;
    notifyListeners();
  }

  void trocarTela(int index) {
    indiceAtual = index;
    notifyListeners();
  }

  void alternarTema() {
    modoEscuro = !modoEscuro;
    notifyListeners();
  }

  // ativa ou desativa notificações
  void alternarNotificacoes(bool valor) {
    notificacoesAtivas = valor;
    notifyListeners();
  }

  // altera o nome do usuário
  void alterarNome(String nome) {
    nomeUsuario = nome;
    notifyListeners();
  }

  void resetarAtividades() {
    for (var a in atividades) {
      a.concluida = false;
    }
    notifyListeners();
  }

  int get progresso {
    if (atividades.isEmpty) return 0;
    return ((concluidas.length / atividades.length) * 100).toInt();
  }
}