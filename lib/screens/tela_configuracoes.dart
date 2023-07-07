import 'package:flutter/material.dart';
import '../models/configuracoes.dart';
import '../components/main_drawer.dart';

class TelaConfiguracoes extends StatefulWidget {
  const TelaConfiguracoes({super.key});

  @override
  State<TelaConfiguracoes> createState() => _TelaConfiguracoesState();
}

class _TelaConfiguracoesState extends State<TelaConfiguracoes> {
  var configuracoes = Configuracoes();

  Widget _criarSwitch(
    String titulo,
    String subtitulo,
    bool valor,
    void Function(bool) quandoMudar,
  ) {
    return SwitchListTile.adaptive(
      title: Text(titulo),
      subtitle: Text(subtitulo),
      value: valor,
      onChanged: quandoMudar,
      inactiveTrackColor:
          MaterialStateColor.resolveWith((states) => Colors.grey[400]!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _criarSwitch(
                  'Sem Glútem',
                  'Só exibe refeições sem glútem.',
                  configuracoes.semGlutem,
                  (valor) {
                    setState(
                      () {
                        configuracoes.semGlutem = valor;
                      },
                    );
                  },
                ),
                _criarSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose.',
                  configuracoes.semLactose,
                  (valor) {
                    setState(
                      () {
                        configuracoes.semLactose = valor;
                      },
                    );
                  },
                ),
                _criarSwitch(
                  'Vagena',
                  'Só exibe refeições vagenas.',
                  configuracoes.eVegano,
                  (valor) {
                    setState(
                      () {
                        configuracoes.eVegano = valor;
                      },
                    );
                  },
                ),
                _criarSwitch(
                  'Vegetariana',
                  'Só exibe refeições vegetarianas.',
                  configuracoes.eVegetariano,
                  (valor) {
                    setState(
                      () {
                        configuracoes.eVegetariano = valor;
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
