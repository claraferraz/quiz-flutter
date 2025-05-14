import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    //para novas instâncias eu não preciso colocar o nome 'new'
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(onPressed: null, child: Text('resposta 1')),
            //o professor usou RaisedButton, mas está depreciado e foi substituído pelo ElevatedButton
            //button é disabled by default, ele ativa quando setamos um onPressed != null
            ElevatedButton(
              onPressed: () => responder(), //pode ser assim
              child: Text('resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder, //ou pode ser assim
              child: Text('resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
