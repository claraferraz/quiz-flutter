import 'package:flutter/material.dart';
import 'package:quiz/respostas.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _numeroDaPergunta = 0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];
  void _responder() {
    if (perguntas.length - 1 > _numeroDaPergunta) {
      setState(() {
        _numeroDaPergunta++;
      });
    } else {
      setState(() {
        _numeroDaPergunta--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //para novas instâncias eu não preciso colocar o nome 'new'
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_numeroDaPergunta]),
            Respostas('resposta 1', _responder),
            Respostas('resposta 2', _responder),
            Respostas('resposta 3', _responder),
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
