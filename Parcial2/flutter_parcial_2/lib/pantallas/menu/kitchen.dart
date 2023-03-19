
import 'package:flutter/material.dart';
class Kitchen extends StatelessWidget {
  const Kitchen({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
      child:Text(
      'Hola cocina',
      style: TextStyle(fontSize: 30), //estilo de fuente y tamaño,color
    ),
    );
  }
}