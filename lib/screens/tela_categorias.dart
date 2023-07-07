import 'package:flutter/material.dart';
import '../components/item_categoria.dart';
import '../data/categorias_ficticias.dart';

class TelaCategorias extends StatelessWidget {
  const TelaCategorias({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: categoriasFicticias.map((e) => ItemCategoria(e)).toList(),
    );
  }
}
