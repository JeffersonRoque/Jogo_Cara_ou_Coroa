import 'package:caraoucoroa/menu.dart';
import 'package:flutter/material.dart';

class CaraOuCoroa extends StatefulWidget {

  String _valor;
  CaraOuCoroa(this._valor);

  @override
  _CaraOuCoroaState createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/moeda_${this.widget._valor}.png"),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
