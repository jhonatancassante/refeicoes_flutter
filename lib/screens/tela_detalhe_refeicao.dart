import 'package:flutter/material.dart';
import '../models/refeicao.dart';

class TelaDetalheRefeicao extends StatelessWidget {
  final Function(Refeicao) quandoAlternarFavorito;
  final Function(Refeicao) eFavorita;

  const TelaDetalheRefeicao(this.quandoAlternarFavorito, this.eFavorita,
      {super.key});

  Widget _criarTituloSecao(BuildContext context, String titulo) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        titulo,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _criarContainerSecao(Widget child) {
    return Container(
      width: double.infinity,
      height: 250,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final refeicao = ModalRoute.of(context)!.settings.arguments as Refeicao;

    return Scaffold(
      appBar: AppBar(
        title: Text(refeicao.titulo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                refeicao.imagemUrl,
                fit: BoxFit.cover,
              ),
            ),
            _criarTituloSecao(context, 'Ingredientes'),
            _criarContainerSecao(
              ListView.builder(
                itemCount: refeicao.ingredientes.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(refeicao.ingredientes[index]),
                    ),
                  );
                },
              ),
            ),
            _criarTituloSecao(context, 'Passos'),
            _criarContainerSecao(
              ListView.builder(
                itemCount: refeicao.passos.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(refeicao.passos[index]),
                      ),
                      Divider(
                        height: 1,
                        color: (index + 1) != refeicao.passos.length
                            ? Colors.black54
                            : Colors.white,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          quandoAlternarFavorito(refeicao);
        },
        child: eFavorita(refeicao)
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border),
      ),
    );
  }
}
