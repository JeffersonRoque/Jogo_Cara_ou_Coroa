import 'dart:math';
import 'package:flutter/material.dart';
import 'CaraOuCoroa.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {

  void _CaraOuCoroa() {

    List<String> itens = ["cara", "coroa"];
    int num = Random().nextInt(itens.length);
    String resultado = itens[num];

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CaraOuCoroa(resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86), //utilizar prefixo 0xff
//      backgroundColor: Color.fromRGBO(255, 204, 128, 1), // RGB com opacidade
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: this._CaraOuCoroa,
              child: Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
