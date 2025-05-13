import 'package:flutter/material.dart';

main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  Widget build(BuildContext context) {
    //para novas instâncias eu não preciso colocar o nome 'new'
    return MaterialApp(home: Text('Olá Flutter!'));
  }
}
