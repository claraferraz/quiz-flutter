import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
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
            ElevatedButton(onPressed: null, child: Text('resposta 2')),
            ElevatedButton(onPressed: null, child: Text('resposta 3')),
            //o professor usou RaisedButton, mas está depreciado e foi substituído pelo ElevatedButton
          ],
        ),
      ),
    );
  }
}
