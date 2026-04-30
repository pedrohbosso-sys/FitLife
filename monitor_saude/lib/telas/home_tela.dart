import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/atividadesController.dart';
import 'dashboard_tela.dart';
import 'atividades_tela.dart';
import 'configuracoes_tela.dart';

class HomeTela extends StatelessWidget {
  const HomeTela({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Provider.of<AtividadesController>(context);

    final telas = [
      const DashboardTela(),
      const AtividadesTela(),
      const ConfiguracoesTela(),
    ];

    return Scaffold(
      appBar: AppBar(
        // mostra o nome do usuário
        title: Text("Olá, ${c.nomeUsuario} bem-vindo ao FitLife!"),

        // ícone de notificações no canto superior
        actions: [
          IconButton(
            icon: Icon(
              c.notificacoesAtivas
                  ? Icons.notifications
                  : Icons.notifications_off,
              color:
                  c.notificacoesAtivas ? Colors.yellow : Colors.white,
            ),
            onPressed: () {
              // alterna o estado das notificações
              c.alternarNotificacoes(!c.notificacoesAtivas);
            },
          ),
        ],
      ),

      body: telas[c.indiceAtual],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: c.indiceAtual,
        onTap: c.trocarTela,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: "Atividades"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Config"),
        ],
      ),
    );
  }
}