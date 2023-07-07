import 'package:flutter/material.dart';
import 'tela_categorias.dart';
import 'tela_favoritos.dart';

class TelaAbas extends StatelessWidget {
  const TelaAbas({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos Cozinhar?'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
          ),
        ),
        body: const TabBarView(
          children: [
            TelaCategorias(),
            TelaFavoritos(),
          ],
        ),
      ),
    );
  }
}
