import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/pantallas/principal.dart';

void main() {
  runApp( Parcial2());
}

class Parcial2 extends StatelessWidget {
  const Parcial2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}