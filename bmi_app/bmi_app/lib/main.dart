import 'package:bmi_app/screens/ingreso_datos_screen.dart';
import 'package:bmi_app/screens/resultado_screen.dart';
import 'package:bmi_app/utils/constantes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kColorBackground,
      ),
      home: IngresoDatosScreen(),
    );
  }
}

// #F82867  -- Color medio rosado del boton
// #13183C  -- Color oscuro del card
// #24284B  -- Color claro del card
// #0C1035  -- Color Background
