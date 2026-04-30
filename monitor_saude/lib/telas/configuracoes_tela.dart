import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/atividadesController.dart';


// Tela de configurações do aplicativo
class ConfiguracoesTela extends StatelessWidget {
  const ConfiguracoesTela({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Provider.of<AtividadesController>(context);
    final nomeController = TextEditingController(text: c.nomeUsuario);
    
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [

        // campo para alterar o nome do usuário
        Card(
          child: ListTile(
            title: const Text("Nome do usuário"),
            subtitle: TextField(
              controller: nomeController,
              onSubmitted: (valor) {
                c.alterarNome(valor);
              },
            ),
          ),
        ),

        const SizedBox(height: 10),

        // botão para ativar ou desativar notificações
        Card(
          child: SwitchListTile(
            title: const Text("Ativar notificações"),
            value: c.notificacoesAtivas,
            onChanged: (valor) {
              c.alternarNotificacoes(valor);
            },
          ),
        ),

        const SizedBox(height: 10),

        // alternar modo escuro
        Card(
          child: SwitchListTile(
            title: const Text("Modo escuro"),
            value: c.modoEscuro,
            onChanged: (_) => c.alternarTema(),
          ),
        ),

        const SizedBox(height: 20),

        // botão para resetar atividades
        ElevatedButton.icon(
          icon: const Icon(Icons.refresh),
          label: const Text("Resetar atividades"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            c.resetarAtividades();
          },
        ),
      ],
    );
  }
}