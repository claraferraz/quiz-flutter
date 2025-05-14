import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final Function responder;
  const Respostas(this.texto, this.responder, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 126, 167),
        ),
        onPressed: () => responder(),
        child: Text(texto, style: TextStyle(color: Colors.black, fontSize: 25)),
      ),
    );
  }
}


//o professor usou RaisedButton, mas está depreciado e foi substituído pelo ElevatedButton
//button é disabled by default, ele ativa quando setamos um onPressed != null
/*
ElevatedButton(
  onPressed: () => _responder(), //pode ser assim
  child: Text('resposta 2'),
),
ElevatedButton(
  onPressed: _responder, //ou pode ser assim
  child: Text('resposta 3')
*/