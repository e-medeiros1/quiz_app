// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/questionario.dart';
import 'package:quiz_app/resultado_final.dart';

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual gatinho é o mais atrapalhado?',
      'respostas': [
        {'texto': 'Shenon', 'pontuacao': 10},
        {'texto': 'Shanito', 'pontuacao': 7},
        {'texto': 'Shena', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual a personalidade do Shenon?',
      'respostas': [
        {'texto': 'Brincalhão', 'pontuacao': 10},
        {'texto': 'Carinhoso', 'pontuacao': 7},
        {'texto': 'Fofinho', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual a personalidade da Shena?',
      'respostas': [
        {'texto': 'Fofinha', 'pontuacao': 10},
        {'texto': 'Brincalhona', 'pontuacao': 7},
        {'texto': 'Briguenta', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual a comida preferida do Shanito?',
      'respostas': [
        {'texto': 'Tudo', 'pontuacao': 10},
        {'texto': 'Sachê', 'pontuacao': 7},
        {'texto': 'Ração', 'pontuacao': 5},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
  }

  void reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title:
              const Center(child: Text('Quiz', style: TextStyle(fontSize: 28))),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                responder: _responder,
                perguntaSelecionada: _perguntaSelecionada,
              )
            : Resultado(
                pontuacao: pontuacaoTotal,
                quandoReiniciado: reiniciar,
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
