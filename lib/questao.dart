import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao({Key? key, required this.texto}) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 50),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
