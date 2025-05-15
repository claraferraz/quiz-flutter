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
  bool get _temPerguntaSelecionada {
    return _numeroDaPergunta < perguntas.length;
  }

  void _responder() {
    if (_temPerguntaSelecionada) {
      setState(() {
        _numeroDaPergunta++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        _temPerguntaSelecionada
            ? perguntas[_numeroDaPergunta].cast()['resposta']
            : [];
    ;

    //para novas instâncias eu não preciso colocar o nome 'new'
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: const Color.fromARGB(255, 255, 126, 167),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        body:
            _temPerguntaSelecionada
                ? Column(
                  children: <Widget>[
                    Questao(perguntas[_numeroDaPergunta]['texto'].toString()),
                    ...respostas.map((t) => Respostas(t, _responder)),
                  ],
                )
                : Center(
                  child: Text(
                    'Parabéns! Não há mais perguntas',
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
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
