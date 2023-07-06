import 'package:flutter/material.dart';
import 'screens/tela_categorias.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          color: Colors.pink,
        ),
      ),
      home: const TelaCategorias(),
    );
  }
}
