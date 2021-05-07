import 'package:bmi_app/components/mi_boton.dart';
import 'package:bmi_app/components/mi_tarjeta.dart';
import 'package:bmi_app/utils/constantes.dart';
import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final String bmi;
  final String resultado;
  final String interpretacion;
  ResultadoScreen({this.bmi, this.resultado, this.interpretacion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CALCULADORA BMI'),
          backgroundColor: kColorBackground,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Tus Resultados',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: MiTarjeta(
                color: kColorMiTarjetaClaro,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '$resultado',
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    ),
                    Text(
                      '$bmi',
                      style: TextStyle(fontSize: 96),
                    ),
                    Text(interpretacion),
                  ],
                ),
              ),
            ),
            MiBoton(
              'RECALCULAR BMI',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
