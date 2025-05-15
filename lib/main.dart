// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:quiz/respostas.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _numeroDaPergunta = 0;

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': ['preto', 'vermelho', 'verde', 'rosa', 'branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': ['cachorro', 'gato', 'sagui', 'capivara', 'passaro'],
    },
    {
      'texto': 'Quais são as suas pessoas favoritas?',
      'resposta': ['André', 'Rafa', 'Carlos', 'Tânia', 'Ana Clara'],
    },
  ];
  void _responder() {
    if (perguntas.length - 1 > _numeroDaPergunta) {
      setState(() {
        _numeroDaPergunta++;
      });
    } else {
      setState(() {
        _numeroDaPergunta = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Respostas> respostas = [];
    for (String textoResp in perguntas[_numeroDaPergunta].cast()['resposta']) {
      respostas.add(Respostas(textoResp, _responder));
    }
    //para novas instâncias eu não preciso colocar o nome 'new'
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_numeroDaPergunta]['texto'].toString()),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
