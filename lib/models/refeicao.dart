enum Complexidade {
  simples,
  medio,
  dificil,
}

enum Custo {
  barato,
  justo,
  caro,
}

class Refeicao {
  final String id;
  final List<String> categorias;
  final String titulo;
  final String imagemUrl;
  final List<String> ingredientes;
  final List<String> passos;
  final int duracao;
  final bool semGlutem;
  final bool semLactose;
  final bool eVegano;
  final bool eVegetariano;
  final Complexidade complexidade;
  final Custo custo;

  const Refeicao({
    required this.id,
    required this.categorias,
    required this.titulo,
    required this.imagemUrl,
    required this.ingredientes,
    required this.passos,
    required this.duracao,
    required this.semGlutem,
    required this.semLactose,
    required this.eVegano,
    required this.eVegetariano,
    required this.complexidade,
    required this.custo,
  });

  String get textoComplexidade {
    switch (complexidade) {
      case Complexidade.simples:
        return 'Simples';
      case Complexidade.medio:
        return 'Normal';
      case Complexidade.dificil:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get textoCusto {
    switch (custo) {
      case Custo.barato:
        return 'Barato';
      case Custo.justo:
        return 'Justo';
      case Custo.caro:
        return 'Caro';
      default:
        return 'Desconhecida';
    }
  }
}
