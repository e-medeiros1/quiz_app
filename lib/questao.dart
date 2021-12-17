import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao({Key? key, required this.texto}) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
