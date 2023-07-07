import 'package:flutter/material.dart';
import 'tela_categorias.dart';
import 'tela_favoritos.dart';

class TelaAbas extends StatefulWidget {
  const TelaAbas({super.key});

  @override
  State<TelaAbas> createState() => _TelaAbasState();
}

class _TelaAbasState extends State<TelaAbas> {
  int _indiceTelaSelecionada = 0;
  final List<Map<String, Object>> _telas = [
    {
      'titulo': 'Lista de Categorias',
      'tela': const TelaCategorias(),
    },
    {
      'titulo': 'Meus Favoritos',
      'tela': const TelaFavoritos(),
    },
  ];

  _selecionaTela(int index) {
    setState(() {
      _indiceTelaSelecionada = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_telas[_indiceTelaSelecionada]['titulo'] as String),
        ),
        body: _telas[_indiceTelaSelecionada]['tela'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selecionaTela,
          backgroundColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _indiceTelaSelecionada,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
          ],
        ),
      ),
    );
  }
}
