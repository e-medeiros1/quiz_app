// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.pontuacao}) : super(key: key);

  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 21) {
      return 'Você concluiu, mas não foi o suficiente!';
    } else if (pontuacao < 26) {
      return 'Você é bom!';
    } else if (pontuacao < 32) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(fraseResultado, style: TextStyle(fontSize: 35)));
  }
}
