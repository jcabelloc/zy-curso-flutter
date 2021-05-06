import 'dart:math';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DadosApp(),
    );
  }
}

class DadosApp extends StatefulWidget {
  @override
  _DadosAppState createState() => _DadosAppState();
}

class _DadosAppState extends State<DadosApp> {
  int dadoIzquierdo = 1;
  int dadoDerecho = 4;

  void cambiarValorDado() {
    setState(() {
      dadoIzquierdo = Random().nextInt(6) + 1;
      dadoDerecho = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: cambiarValorDado,
                  child: Image.asset(
                    'images/dice$dadoIzquierdo.png',
                  ),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: cambiarValorDado,
                  child: Image.asset(
                    'images/dice$dadoDerecho.png',
                    width: 96,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dados'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
