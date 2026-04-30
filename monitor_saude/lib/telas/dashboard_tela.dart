import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/atividadesController.dart';

    // Tela de dashboard, exibindo estatísticas das atividades do usuário
class DashboardTela extends StatelessWidget {
  const DashboardTela({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Provider.of<AtividadesController>(context);

    // Exibe um GridView com cartões para cada estatística: Concluídas, Pendentes, Progresso e Total
    return GridView.count(
      crossAxisCount: 2,
      children: [// Chama a função card para criar cada cartão com título, valor e ícone
        card("Concluídas", c.concluidas.length.toString(),
            Icons.check_circle),
        card("Pendentes", c.pendentes.length.toString(), Icons.pending),
        card("Progresso", "${c.progresso}%", Icons.show_chart),
        card("Total", c.atividades.length.toString(), Icons.list),
      ],
    );
  }
    // Função auxiliar para criar um cartão com título, valor e ícone
  Widget card(String titulo, String valor, IconData icone) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 40, color: Colors.green),
            const SizedBox(height: 10),
            Text(titulo),
            const SizedBox(height: 5),
            Text(
              valor,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}