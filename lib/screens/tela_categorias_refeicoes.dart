import 'package:flutter/material.dart';
import '../models/categoria.dart';
import '../components/item_refeicao.dart';
import '../models/refeicao.dart';

class TelaCategoriasRefeicoes extends StatelessWidget {
  final List<Refeicao> refeicoes;

  const TelaCategoriasRefeicoes(this.refeicoes, {super.key});

  @override
  Widget build(BuildContext context) {
    final categoria = ModalRoute.of(context)!.settings.arguments as Categoria;

    final categoriasRefeicoes = refeicoes
        .where((element) => element.categorias.contains(categoria.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.titulo),
      ),
      body: ListView.builder(
        itemCount: categoriasRefeicoes.length,
        itemBuilder: (context, index) {
          return ItemRefeicao(categoriasRefeicoes[index]);
        },
      ),
    );
  }
}
