// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'perguntas_app.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? titulo;

    return MaterialApp(
      title: titulo = 'QuizApp',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: PerguntaApp(),
    );
  }
}
