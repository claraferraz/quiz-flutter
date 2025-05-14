//componente stateless, construtor que vai receber um texto, colocar o raisedbutton dentro dele
//passar o texto de dentro do botão como parâmetro para o componente
import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  const Respostas(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null, child: Text(texto));
    //o professor usou RaisedButton, mas está depreciado e foi substituído pelo ElevatedButton
    //button é disabled by default, ele ativa quando setamos um onPressed != null
  }
}
