import 'package:flutter/material.dart';
import '../components/item_categoria.dart';
import '../data/dados_ficticios.dart';

class TelaCategorias extends StatelessWidget {
  const TelaCategorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categoriasFicticias.map((e) => ItemCategoria(e)).toList(),
      ),
    );
  }
}
