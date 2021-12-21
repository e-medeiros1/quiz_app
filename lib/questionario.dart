import 'package:flutter/material.dart';
import 'package:quiz_app/questao.dart';
import 'package:quiz_app/respostas.dart';

class Questionario extends StatelessWidget {
  const Questionario(
      {Key? key,
      required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder})
      : super(key: key);

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  //Verifica se possui uma pergunta selecionada
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
            resposta: resp['texto'].toString(),
            onSelected: () =>
                responder(int.parse(resp['pontuacao'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
