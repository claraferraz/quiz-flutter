import 'package:flutter/material.dart';
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
    print(_numeroDaPergunta);
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
            ElevatedButton(onPressed: null, child: Text('resposta 1')),
            //o professor usou RaisedButton, mas está depreciado e foi substituído pelo ElevatedButton
            //button é disabled by default, ele ativa quando setamos um onPressed != null
            ElevatedButton(
              onPressed: () => _responder(), //pode ser assim
              child: Text('resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responder, //ou pode ser assim
              child: Text('resposta 3'),
            ),
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
