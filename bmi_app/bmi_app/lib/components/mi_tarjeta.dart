import 'package:flutter/material.dart';

class MiTarjeta extends StatelessWidget {
  final Widget child;
  final Color color;

  MiTarjeta({this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
