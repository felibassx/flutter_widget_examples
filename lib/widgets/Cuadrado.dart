import 'package:flutter/material.dart';
import 'package:widgets_collection/utils/styles.dart' as utils;

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
      child: Center(
        child: Text(
          this.texto,
          style: utils.pStyleText,
        ),
      ),
    );
  }
}