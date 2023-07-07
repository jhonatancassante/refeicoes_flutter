import 'package:flutter/material.dart';
import 'screens/tela_categorias_refeicoes.dart';
import 'screens/tela_detalhe_refeicao.dart';
import 'screens/tela_abas.dart';
import 'screens/tela_configuracoes.dart';
import 'utils/app_routes.dart';
import 'models/refeicao.dart';
import 'data/refeicoes_ficticias.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Refeicao> _refeicoesDisponiveis = refeicoesFicticias;

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData(
      fontFamily: 'Raleway',
    );

    return MaterialApp(
      title: 'Receitas',
      theme: tema.copyWith(
        useMaterial3: true,
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
          background: const Color.fromRGBO(255, 254, 229, 1),
        ),
        textTheme: tema.textTheme.copyWith(
          titleLarge: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            color: Colors.black,
          ),
        ),
        appBarTheme: tema.appBarTheme.copyWith(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          color: Colors.pink,
        ),
      ),
      routes: {
        AppRoutes.home: (context) => const TelaAbas(),
        AppRoutes.categoriasRefeicoes: (context) =>
            TelaCategoriasRefeicoes(_refeicoesDisponiveis),
        AppRoutes.refeicaoDetalhes: (context) => const TelaDetalheRefeicao(),
        AppRoutes.configuracoes: (context) => const TelaConfiguracoes(),
      },
    );
  }
}
