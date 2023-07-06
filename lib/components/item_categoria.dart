import 'package:flutter/material.dart';
import '../models/categoria.dart';

class ItemCategoria extends StatelessWidget {
  final Categoria categoria;

  const ItemCategoria(this.categoria, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            categoria.cor.withOpacity(0.5),
            categoria.cor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(categoria.titulo),
    );
  }
}
