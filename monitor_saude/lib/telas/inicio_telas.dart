import 'package:flutter/material.dart';
import 'home_tela.dart';
 
 // Tela de início do aplicativo, exibindo o logo e um botão para começar
class InicioTela extends StatelessWidget {
  const InicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Centraliza o conteúdo na tela
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ // Exibe o logo do aplicativo
            Image.asset(
              'assets/imagens/logo.png',
              width: 300,
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 40),
            ElevatedButton( // Botão para começar, estilizado com padding e bordas arredondadas
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Começar"),
              onPressed: () {
                Navigator.pushReplacement( // Navega para a tela principal do aplicativo
                  context,
                  MaterialPageRoute(builder: (_) => const HomeTela()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}