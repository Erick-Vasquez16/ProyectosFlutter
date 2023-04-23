import 'package:flutter/material.dart';
import 'package:flutter_parcial_3/pantallas/Inicio.dart';

void main() {
  runApp(parcial3());
}

class parcial3 extends StatelessWidget {
  const parcial3 ({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApodScreen(),
    );
  }
}

