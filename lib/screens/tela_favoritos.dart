import 'package:flutter/material.dart';
import '../models/refeicao.dart';
import '../components/item_refeicao.dart';

class TelaFavoritos extends StatelessWidget {
  final List<Refeicao> refeicoesFavoritas;

  const TelaFavoritos(this.refeicoesFavoritas, {super.key});

  @override
  Widget build(BuildContext context) {
    if (refeicoesFavoritas.isEmpty) {
      return const Center(
        child: Text("Nenhuma refeição foi marcada como favorita!"),
      );
    } else {
      return ListView.builder(
        itemCount: refeicoesFavoritas.length,
        itemBuilder: (context, index) {
          return ItemRefeicao(refeicoesFavoritas[index]);
        },
      );
    }
  }
}
