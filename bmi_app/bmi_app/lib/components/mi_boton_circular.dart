import 'package:bmi_app/utils/constantes.dart';
import 'package:flutter/material.dart';

class MiBotonCircular extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  const MiBotonCircular({this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      child: Icon(iconData),
      shape: CircleBorder(),
      fillColor: kColorMiTarjetaOscuro,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
    );
  }
}
