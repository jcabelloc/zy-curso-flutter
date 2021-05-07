import 'package:bmi_app/utils/constantes.dart';
import 'package:flutter/material.dart';

class MiBoton extends StatelessWidget {
  final String texto;
  final Function onTap;
  const MiBoton(this.texto, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            texto,
            style: TextStyle(fontSize: 20),
          ),
        ),
        color: kColorAcentuado,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 16),
      ),
    );
  }
}
