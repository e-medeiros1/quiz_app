// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({Key? key, required this.resposta, required this.onSelected})
      : super(key: key);
  final void Function() onSelected;
  final String resposta;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(
          resposta,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onSelected,
      ),
    );
  }
}
