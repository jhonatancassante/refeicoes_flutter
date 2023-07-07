import 'package:flutter/material.dart';
import '../models/refeicao.dart';
import '../utils/app_routes.dart';

class ItemRefeicao extends StatelessWidget {
  final Refeicao refeicao;

  const ItemRefeicao(this.refeicao, {super.key});

  void _selecionaRefeicao(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      AppRoutes.refeicaoDetalhes,
      arguments: refeicao,
    )
        .then(
      (value) {
        if (value == null) {
          print('Vazio');
        } else {
          print('O nome da refeição é $value.');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selecionaRefeicao(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    refeicao.imagemUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      refeicao.titulo,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6),
                      Text('${refeicao.duracao} min'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 6),
                      Text(refeicao.textoComplexidade),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(width: 6),
                      Text(refeicao.textoCusto),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
