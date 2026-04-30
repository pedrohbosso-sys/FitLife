import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/atividadesController.dart';

  // Tela de atividades, exibindo a lista de atividades do usuário com opção de marcar como concluída
class AtividadesTela extends StatelessWidget {
  const AtividadesTela({super.key});

  // Construção da interface da tela de atividades, utilizando ListView para exibir as atividades do usuário
  @override
  Widget build(BuildContext context) {
    final c = Provider.of<AtividadesController>(context);

      // Exibe um ListView com as atividades do usuário, permitindo marcar como concluída através de um Checkbox
    return ListView(// Mapeia cada atividade para um Card estilizado, exibindo o nome da atividade e um Checkbox para marcar como concluída
      children: c.atividades.map((atividade) {
        return Card( // Estiliza cada atividade como um cartão, com margem e bordas arredondadas
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            title: Text(
              atividade.nome,
              style: TextStyle(
                decoration: atividade.concluida
                    ? TextDecoration.lineThrough
                    : null, // Riscado se a atividade estiver concluída
              ),
            ),
            trailing: Checkbox(
              value: atividade.concluida, // Checkbox marcado se a atividade estiver concluída
              activeColor: Colors.green,
              onChanged: (_) => c.alternarStatus(atividade), // Chama a função para alternar o status da atividade (concluída ou pendente)
            ),
          ),
        );
      }).toList(),
    );
  }
}