import 'package:flutter/material.dart';
import '../models/refeicao.dart';

class TelaDetalheRefeicao extends StatelessWidget {
  const TelaDetalheRefeicao({super.key});

  @override
  Widget build(BuildContext context) {
    final refeicao = ModalRoute.of(context)!.settings.arguments as Refeicao;

    return Scaffold(
      appBar: AppBar(
        title: Text(refeicao.titulo),
      ),
      body: const Center(
        child: Text('Detalhes da refeição'),
      ),
    );
  }
}
