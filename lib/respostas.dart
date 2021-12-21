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
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            minimumSize: Size(300, 40),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
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
