// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/questionario.dart';
import 'package:quiz_app/resultado_final.dart';

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual gatinho é o mais brincalhão?',
      'respostas': [
        {'texto': 'Shenon', 'nota': 10},
        {'texto': 'Shenon', 'nota': 7},
        {'texto': 'Shanito', 'nota': 5},
      ],
    },
    {
      'texto': 'Qual a personalidade do Shenon?',
      'respostas': [
        {'texto': 'Brincalhão', 'nota': 10},
        {'texto': 'Carinhoso', 'nota': 7},
        {'texto': 'Fofinho', 'nota': 5},
      ],
    },
    {
      'texto': 'Qual a personalidade da Shena?',
      'respostas': [
        {'texto': 'Fofinha', 'nota': 10},
        {'texto': 'Brincalhona', 'nota': 7},
        {'texto': 'Briguenta', 'nota': 5},
      ],
    },
    {
      'texto': 'Qual a comida preferida do Shanito?',
      'respostas': [
        {'texto': 'Tudo', 'nota': 10},
        {'texto': 'Sachê', 'nota': 7},
        {'texto': 'Ração', 'nota': 5},
      ],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
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
            : const Resultado(),
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
