import 'package:flutter/material.dart';

import 'package:widgets_collection/utils/styles.dart' as utils;

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget', style: utils.h1StyleText,),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() =>  Navigator.pushReplacementNamed(context, 'home'),
        )
      ),
      body: Row(
        children: <Widget>[
          Cuadrado(Colors.pink, 'Sin Expanded'),
          Expanded(
            child: Cuadrado(Colors.green, 'Con Expanded'),
            flex: 2,
          ),
          Expanded(
            child: Cuadrado(Colors.blue, 'Con Expanded'),
            flex: 1,
          ),
          Cuadrado(Colors.pink, 'Sin Expanded'),
        ],
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;
  final String texto;

  Cuadrado(this.color, this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: this.color),
      child: Text(
        this.texto,
        style: utils.pStyleText,
      ),
    );
  }
}
