import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

/*
ElevatedButton(
  onPressed: () => _responder(), //pode ser assim
  child: Text('resposta 2'),
),
ElevatedButton(
  onPressed: _responder, //ou pode ser assim
  child: Text('resposta 3')
*/
