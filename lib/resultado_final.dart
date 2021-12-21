// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(
      {Key? key, required this.pontuacao, required this.quandoReiniciado})
      : super(key: key);

  final int pontuacao;
  final void Function() quandoReiniciado;

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text('Sua pontuação foi', style: TextStyle(fontSize: 35))),
        Text('$pontuacao', style: TextStyle(fontSize: 70)),
        Center(child: Text(fraseResultado, style: TextStyle(fontSize: 35))),
        Container(
          padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
          child: OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )),
              overlayColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: quandoReiniciado,
            child: Text(
              'Jogar novamente?',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
