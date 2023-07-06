import 'package:flutter/material.dart';

class TelaCategoriasRefeicoes extends StatelessWidget {
  const TelaCategoriasRefeicoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: const Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}
