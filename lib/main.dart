import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var numeroDaPergunta = 0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];
  void responder() {
    if (perguntas.length - 1 > numeroDaPergunta) {
      setState(() {
        numeroDaPergunta++;
      });
    } else {
      setState(() {
        numeroDaPergunta--;
      });
    }
    print(numeroDaPergunta);
  }

  @override
  Widget build(BuildContext context) {
    //para novas instâncias eu não preciso colocar o nome 'new'
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: <Widget>[
            Text(perguntas[numeroDaPergunta]),
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

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
