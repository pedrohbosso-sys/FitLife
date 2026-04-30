// situação de aprendizagem 02 -  aplicativo todo-list 
//Uma empresa de tecnologia voltada para bem-estar deseja lançar o aplicativo , que ajudará usuários a acompanhar sua rotina de exercícios físicos e hábitos saudáveis.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/atividadesController.dart';
import 'telas/inicio_telas.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AtividadesController(),
      child: const MeuApp(),
    ),
  );
}
// Widget principal do aplicativo
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  // Construção da interface do aplicativo
  @override
  Widget build(BuildContext context) {
    final controlador = Provider.of<AtividadesController>(context);

    //Tira a mensagem de debug 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // Tema (modo claro / escuro)
      theme: controlador.modoEscuro
          ? ThemeData.dark()
          : ThemeData.light(),

      // Primeira tela do app
      home: const InicioTela(),
    );
  }
}