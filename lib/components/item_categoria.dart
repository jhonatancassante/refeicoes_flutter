import 'package:flutter/material.dart';
import '../models/categoria.dart';
import '../utils/app_routes.dart';

class ItemCategoria extends StatelessWidget {
  final Categoria categoria;

  const ItemCategoria(this.categoria, {super.key});

  void _categoriaSeleccionada(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.categoriasRefeicoes,
      arguments: categoria,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _categoriaSeleccionada(context),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
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
        child: Text(
          categoria.titulo,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
