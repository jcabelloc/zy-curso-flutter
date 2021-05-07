import 'package:bmi_app/components/mi_boton.dart';
import 'package:bmi_app/components/mi_boton_circular.dart';
import 'package:bmi_app/components/mi_tarjeta.dart';
import 'package:bmi_app/models/calculator_brain.dart';
import 'package:bmi_app/screens/resultado_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/constantes.dart';

class IngresoDatosScreen extends StatefulWidget {
  @override
  _IngresoDatosScreenState createState() => _IngresoDatosScreenState();
}

class _IngresoDatosScreenState extends State<IngresoDatosScreen> {
  int altura = 168;
  int peso = 75;
  int edad = 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora BMI'),
        backgroundColor: kColorBackground,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: MiTarjeta(
                  color: kColorMiTarjetaOscuro,
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 64,
                      ),
                      Text(
                        'Hombre',
                        style: kEstiloTexto,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MiTarjeta(
                  color: kColorMiTarjetaClaro,
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 64,
                      ),
                      Text(
                        'Mujer',
                        style: kEstiloTexto,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          MiTarjeta(
            child: Column(
              children: [
                Text(
                  '$altura cm',
                  style: kEstiloValores,
                ),
                Text(
                  'Altura',
                  style: kEstiloTexto,
                ),
                Slider(
                  value: altura.toDouble(),
                  min: 100,
                  max: 250,
                  label: altura.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      altura = value.round();
                    });
                  },
                )
              ],
            ),
            color: kColorMiTarjetaClaro,
          ),
          Row(
            children: [
              Expanded(
                child: MiTarjeta(
                  color: kColorMiTarjetaClaro,
                  child: Column(
                    children: [
                      Text(
                        'Peso',
                        style: kEstiloTexto,
                      ),
                      Text(
                        peso.toString(),
                        style: kEstiloValores,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MiBotonCircular(
                            iconData: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                peso--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          MiBotonCircular(
                            iconData: FontAwesomeIcons.plus,
                            onTap: () {
                              setState(() {
                                peso++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MiTarjeta(
                  color: kColorMiTarjetaClaro,
                  child: Column(
                    children: [
                      Text(
                        'Edad',
                        style: kEstiloTexto,
                      ),
                      Text(
                        '$edad',
                        style: kEstiloValores,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MiBotonCircular(
                            iconData: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                edad--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          MiBotonCircular(
                            iconData: FontAwesomeIcons.plus,
                            onTap: () {
                              setState(() {
                                edad++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          MiBoton(
            'CALCULAR BMI',
            onTap: () {
              var calc = CalculatorBrain(height: altura, weight: peso);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultadoScreen(
                    bmi: calc.calculateBMI(),
                    resultado: calc.getResult(),
                    interpretacion: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
