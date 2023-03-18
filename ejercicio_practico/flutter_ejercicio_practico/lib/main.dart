import 'package:flutter/material.dart';
import 'package:flutter_ejercicio_practico/pantallas/principal.dart';

void main() {
  runApp(Animales());
}
 class Animales extends StatelessWidget {
  const Animales({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Principal(),
    );
  }
}