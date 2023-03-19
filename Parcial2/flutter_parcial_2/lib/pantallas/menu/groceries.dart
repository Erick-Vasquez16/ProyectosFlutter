import 'package:flutter/material.dart';
class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
      child:Text(
      'Hola tienda',
      style: TextStyle(fontSize: 30), //estilo de fuente y tamaño,color
    ),
    );
  }
}