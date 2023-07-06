import 'package:flutter/material.dart';
import '../models/refeicao.dart';

class ItemRefeicao extends StatelessWidget {
  final Refeicao refeicao;

  const ItemRefeicao(this.refeicao, {super.key});

  void _selecionaRefeicao() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selecionaRefeicao,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
